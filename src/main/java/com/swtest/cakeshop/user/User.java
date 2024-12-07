package com.swtest.cakeshop.user;

import com.swtest.cakeshop.order.Order;
import com.swtest.cakeshop.user.dto.UserResponse;
import com.swtest.cakeshop.user.person.Person;
import com.swtest.cakeshop.role.Role;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.Instant;
import java.util.Optional;
import java.util.Set;

@Data
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    @CreatedDate
    private Instant createdAt;

    @Column(nullable = false)
    private String password;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "person_id")
    private Person person;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "user_role",
            joinColumns = {@JoinColumn(name = "user_id")},
            inverseJoinColumns = {@JoinColumn(name = "role_id")}
    )
    private Set<Role> roles;

    @OneToMany(mappedBy = "user")
    private Set<Order> orders;

    public User(String username, String password, Set<Role> roles) {
        this.username = username;
        this.password = password;
        this.roles = roles;
    }

    public UserResponse toDTO(){
        return new UserResponse(
                this.id.toString(),
                this.username,
                this.createdAt.toString(),
                this.person == null ? Optional.empty() : Optional.of(this.person.toDTO()),
                this.roles.stream().map(Role::getName).toList()
        );
    }

}
