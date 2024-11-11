package com.swtest.cakeshop.order;

import com.swtest.cakeshop.user.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface OrderRepository extends JpaRepository<Order, Long> {
    Page<Order> findAllByUser(User user, Pageable pageRequest);
    Optional<Order> findByIdAndUser(Long id, User user);
}
