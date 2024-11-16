package com.swtest.cakeshop.user.person;

import com.swtest.cakeshop.exception.NotFoundException;
import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.person.dto.PersonRequest;
import org.springframework.stereotype.Service;

import java.util.Optional;

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

    @Override
    public Person updatePerson(PersonRequest person, User user) {
        Optional<Person> currentPerson = personRepository.findPersonByUser(user);
        if (currentPerson.isEmpty()) {
            throw new NotFoundException("Not found any information with user: " + user.getUsername());
        }
        Person personToUpdate = currentPerson.get();
        personToUpdate.setName(person.name());
        personToUpdate.setEmail(person.email());
        personToUpdate.setPhoneNumber(person.phoneNumber());
        personToUpdate.setAddress(person.address());

        return personRepository.save(personToUpdate);
    }
}
