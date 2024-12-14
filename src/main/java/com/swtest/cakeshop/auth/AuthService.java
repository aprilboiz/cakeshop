package com.swtest.cakeshop.auth;

import com.swtest.cakeshop.auth.dto.LoginRequest;
import com.swtest.cakeshop.auth.dto.LoginResponse;

public interface AuthService {
    LoginResponse login(LoginRequest request);
}
