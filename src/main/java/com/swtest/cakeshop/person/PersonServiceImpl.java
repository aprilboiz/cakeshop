package com.swtest.cakeshop.person;

import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.user.User;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService{
    private final PersonRepository personRepository;

    public PersonServiceImpl(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }


    public void save(Person person){
        personRepository.save(person);
    }
    @Override
    public Person findPersonByUser(User user) {
        return personRepository.findPersonByUser(user)
                .orElseThrow(() -> new NotFoundException("Not found any information with user: " + user.getUsername()));
    }
}
