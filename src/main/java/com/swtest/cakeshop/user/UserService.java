package com.swtest.cakeshop.user;

import com.swtest.cakeshop.auth.dto.RegisterRequest;
import com.swtest.cakeshop.exception.DuplicateException;
import com.swtest.cakeshop.user.dto.UserResponse;
import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.user.person.PersonRepository;
import com.swtest.cakeshop.role.Role;
import com.swtest.cakeshop.role.RoleService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@Transactional
public class UserService implements UserDetailsService {
    private final PersonRepository personRepository;
    private final RoleService roleService;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final PasswordService passwordService;

    public UserService(PersonRepository personRepository, UserRepository userRepository, RoleService roleService, PasswordService passwordService) {
        this.personRepository = personRepository;
        this.userRepository = userRepository;
        this.roleService = roleService;
        this.passwordService = passwordService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.findByUsername(username);

        if (user.isEmpty()) {
            throw new UsernameNotFoundException("User not found");
        }

        return org.springframework.security.core.userdetails.User.builder()
                .username(user.get().getUsername())
                .password(user.get().getPassword())
                .roles(user.get().getRoles().stream().map(Role::getName).toArray(String[]::new))
                .build();
    }

    public User findByUsername(String username){
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("User with username '%s' not found", username)));
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public Page<UserResponse> findAll(Pageable pageable){
        Page<User> users = userRepository.findAll(pageable);

        List<UserResponse> userResponses = users.getContent().stream()
                .map(User::toDTO)
                .toList();

        return new PageImpl<>(userResponses, pageable, users.getTotalElements());
    }

    public void register(RegisterRequest request){
        // Check if the username already exists
        String userName = request.username();
        Optional<User> existingUser = userRepository.findByUsername(userName);
        if (existingUser.isPresent()){
            throw new DuplicateException(String.format("This username '%s' already exists", userName));
        }
        String hashedPassword = passwordEncoder.encode(request.password());
        Set<Role> userRoles = new HashSet<>();
        userRoles.add(roleService.findByName("USER"));

        Person newPerson = new Person();
        newPerson.setName(request.name());
        newPerson.setEmail(request.email());
        newPerson.setPhoneNumber(request.phoneNumber());
        newPerson.setAddress(request.address());
        personRepository.save(newPerson);

        User user = new User();
        user.setUsername(userName);
        user.setPassword(hashedPassword);
        user.setRoles(userRoles);
        user.setPerson(newPerson);
        userRepository.save(user);
    }

    public User getCurrentUser() {
        String currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
        return findByUsername(currentUsername);
    }

    public String createNewPassword(String username){
        User user = findByUsername(username);
        String newPassword = passwordService.generatePassword(10);
        user.setPassword(passwordEncoder.encode(newPassword));
        userRepository.save(user);
        return newPassword;
    }
}
