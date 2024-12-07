package com.swtest.cakeshop.config;

import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.user.person.PersonRepository;
import com.swtest.cakeshop.product.category.Category;
import com.swtest.cakeshop.product.category.CategoryRepository;
import com.swtest.cakeshop.role.Role;
import com.swtest.cakeshop.role.RoleRepository;
import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Set;

//@Configuration
public class InitializeDatabase {
    private final RoleRepository roleRepository;
    private final CategoryRepository categoryRepository;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final PersonRepository personRepository;

    public InitializeDatabase(RoleRepository roleRepository, CategoryRepository categoryRepository, UserRepository userRepository, PersonRepository personRepository) {
        this.roleRepository = roleRepository;
        this.categoryRepository = categoryRepository;
        this.userRepository = userRepository;
        this.personRepository = personRepository;
    }

//    @PostConstruct
    public void init() {
        Role adminRole = new Role("ADMIN");
        Role userRole = new Role("USER");
        roleRepository.save(userRole);
        roleRepository.save(adminRole);

        Category category1 = new Category("BÁNH KEM");
        Category category2 = new Category("BÁNH COOKIES");
        Category category3 = new Category("BÁNH CẤP ĐÔNG");
        Category category4 = new Category("BÁNH MÌ - BÁNH NGỌT");
        categoryRepository.save(category1);
        categoryRepository.save(category2);
        categoryRepository.save(category3);
        categoryRepository.save(category4);

        User admin = new User("admin", passwordEncoder.encode("12345678"), Set.of(adminRole));
        User user = new User("tuananh", passwordEncoder.encode("12345678"), Set.of(userRole));
        userRepository.save(admin);
        userRepository.save(user);
        User user1 = new User("tuananh1", passwordEncoder.encode("12345678"), Set.of(userRole));
        Person user1Person = new Person("Tuan Anh", "phantuananh@example.com", "0912904732", "273 An Duong Vuong, Da Nang");
        personRepository.save(user1Person);
        user1.setPerson(user1Person);
        userRepository.save(user1);
    }
}
