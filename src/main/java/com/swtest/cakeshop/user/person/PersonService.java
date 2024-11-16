package com.swtest.cakeshop.user.person;

import com.swtest.cakeshop.user.User;
import com.swtest.cakeshop.user.person.dto.PersonRequest;

public interface PersonService {
    Person findPersonByUser(User user);
    Person updatePerson(PersonRequest person, User user);
}
