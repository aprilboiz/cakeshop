package com.swtest.cakeshop.user;

import com.swtest.cakeshop.auth.AuthController;
import com.swtest.cakeshop.auth.AuthServiceImpl;
import com.swtest.cakeshop.auth.dto.LoginRequest;
import com.swtest.cakeshop.auth.dto.LoginResponse;
import com.swtest.cakeshop.auth.jwt.JwtHelper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class UserUnitTests {
    @Mock
    private AuthenticationManager authenticationManager;

    @Mock
    private JwtHelper jwtHelper;

    @Mock
    Authentication auth;

    @Mock
    UserDetails userDetails;

    @InjectMocks
    private AuthServiceImpl authService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void login_ValidCredentials_ReturnsToken() {
        LoginRequest request = new LoginRequest("validUser", "validPassword");

        when(authenticationManager.authenticate(any(UsernamePasswordAuthenticationToken.class))).thenReturn(auth);
        when(auth.getPrincipal()).thenReturn(userDetails);
        when(jwtHelper.generateToken(userDetails)).thenReturn("validToken");

        LoginResponse response = authService.login(request);

        assertEquals("validToken", response.token());
    }

    @Test
    void login_InvalidCredentials_ThrowsException() {
        LoginRequest request = new LoginRequest("invalidUser", "invalidPassword");

        when(authenticationManager.authenticate(any(UsernamePasswordAuthenticationToken.class)))
                .thenThrow(new BadCredentialsException("Invalid credentials"));

        assertThrows(BadCredentialsException.class, () -> authService.login(request));
    }
}