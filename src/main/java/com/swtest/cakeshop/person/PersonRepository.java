package com.swtest.cakeshop.person;

import com.swtest.cakeshop.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PersonRepository extends JpaRepository<Person, Long>{
    Optional<Person> findPersonByUser(User user);
}
