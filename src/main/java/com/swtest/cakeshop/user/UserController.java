package com.swtest.cakeshop.user;

import com.swtest.cakeshop.user.dto.UserResponse;
import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.user.person.PersonService;
import com.swtest.cakeshop.user.person.dto.PersonRequest;
import com.swtest.cakeshop.user.person.dto.PersonResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/users")
public class UserController {
    private final PersonService personService;
    private final UserService userService;
    private final UserRepository userRepository;

    public UserController(PersonService personService, UserService userService, UserRepository userRepository) {
        this.personService = personService;
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @Operation(summary = "Get current user information", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "User information found", content = @Content(schema = @Schema(implementation = UserResponse.class))),
            @ApiResponse(responseCode = "404", description = "User information not found", content = @Content)
    })
    @GetMapping("/info")
    public ResponseEntity<UserResponse> getUserInfo() {
        return ResponseEntity.ok(userService.getCurrentUser().toDTO());
    }

    @Operation(summary = "Get all users information", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Get successfully", content = @Content(schema = @Schema(implementation = UserResponse.class))),
    })
    @GetMapping
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Page<UserResponse>> getAllUsers(Pageable pageable) {
        PageRequest pageRequest = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize(),
                pageable.getSortOr(Sort.by(Sort.Direction.ASC, "id"))
        );

        Page<UserResponse> userResponses = userService.findAll(pageRequest);
        return ResponseEntity.ok(userResponses);
    }

    @Operation(summary = "Re-create an user's password", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Re-create password successfully"),
            @ApiResponse(responseCode = "404", description = "The user with that username was not found")
    })
    @PostMapping("/forgot")
    public ResponseEntity<Map<String, String>> forgetPassword(@RequestBody Map<String, String> payload) {
        String username = payload.get("username");
        Map<String, String> return_msg = new HashMap<>();
        if (username == null || username.isEmpty()) {
            return_msg.put("error", "Username is required");
            return ResponseEntity.badRequest().body(return_msg);
        }
        String newPassword = userService.createNewPassword(username);
        return_msg.put("username", username);
        return_msg.put("newPassword", newPassword);
        return ResponseEntity.ok(return_msg);
    }

    @Operation(summary = "Get user information by username, require Admin role", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "User information found", content = @Content(schema = @Schema(implementation = UserResponse.class))),
            @ApiResponse(responseCode = "404", description = "User information not found", content = @Content)
    })
    @GetMapping("/info/{username}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<UserResponse> getUserInfo(@PathVariable String username) {
        return ResponseEntity.ok(userService.findByUsername(username).toDTO());
    }

    @Operation(summary = "Update current user information", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "User information changed successfully", content = @Content),
            @ApiResponse(responseCode = "404", description = "User information not found", content = @Content)
    })
    @PutMapping
    public ResponseEntity<Void> updateUserInfo(@RequestBody PersonRequest personRequest) {
        User currentUser = userService.getCurrentUser();
        Person updatedPerson = personService.updatePerson(personRequest, currentUser);
        return ResponseEntity.noContent().build();
    }

    @Operation(summary = "Delete current user with information", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "204", description = "Delete user successfully", content = @Content)
    })
    @DeleteMapping
    public ResponseEntity<Void> deleteUserInfo() {
        User currentUser = userService.getCurrentUser();
        userRepository.delete(currentUser);
        return ResponseEntity.noContent().build();
    }
}
