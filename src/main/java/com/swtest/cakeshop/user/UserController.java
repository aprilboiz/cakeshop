package com.swtest.cakeshop.user;

import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.user.person.PersonService;
import com.swtest.cakeshop.user.person.dto.PersonRequest;
import com.swtest.cakeshop.user.person.dto.PersonResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

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
            @ApiResponse(responseCode = "200", description = "User information found", content = @Content(schema = @Schema(implementation = PersonResponse.class))),
            @ApiResponse(responseCode = "404", description = "User information not found", content = @Content)
    })
    @GetMapping("/info")
    public ResponseEntity<PersonResponse> getUserInfo() {
        return ResponseEntity.ok(personService.findPersonByUser(userService.getCurrentUser()).toDTO());
    }

    @Operation(summary = "Get user information by username, require Admin role", tags = {"User"})
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "User information found", content = @Content(schema = @Schema(implementation = PersonResponse.class))),
            @ApiResponse(responseCode = "404", description = "User information not found", content = @Content)
    })
    @GetMapping("/info/{username}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<PersonResponse> getUserInfo(@PathVariable String username) {
        User user = userService.findByUsername(username);
        return ResponseEntity.ok(personService.findPersonByUser(user).toDTO());
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
