package com.swtest.cakeshop.person;

import com.swtest.cakeshop.user.User;

public interface PersonService {
    Person findPersonByUser(User user);
}
