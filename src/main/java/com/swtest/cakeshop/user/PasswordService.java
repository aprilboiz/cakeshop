package com.swtest.cakeshop.user;

import org.springframework.stereotype.Service;

import java.security.SecureRandom;

@Service
public class PasswordService {

    public String generatePassword(int length) {
        String charLowercase = "abcdefghijklmnopqrstuvwxyz";
        String charUppercase = charLowercase.toUpperCase();
        String numbers = "0123456789";
        String specialChars = "!@#$%^&*()_+";
        String combinedChars = charLowercase + charUppercase + numbers + specialChars;

        SecureRandom random = new SecureRandom();
        StringBuilder password = new StringBuilder(length);

        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(combinedChars.length());
            password.append(combinedChars.charAt(randomIndex));
        }

        return password.toString();
    }
}
