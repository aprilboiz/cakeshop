package com.swtest.cakeshop.user;

import com.swtest.cakeshop.auth.dto.RegisterRequest;
import com.swtest.cakeshop.exception.DuplicateException;
import com.swtest.cakeshop.person.Person;
import com.swtest.cakeshop.person.PersonRepository;
import com.swtest.cakeshop.person.PersonService;
import com.swtest.cakeshop.role.Role;
import com.swtest.cakeshop.role.RoleService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
@Transactional
public class UserService implements UserDetailsService {
    private final PersonRepository personRepository;
    private final RoleService roleService;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public UserService(PersonRepository personRepository, UserRepository userRepository, RoleService roleService) {
        this.personRepository = personRepository;
        this.userRepository = userRepository;
        this.roleService = roleService;
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
}
