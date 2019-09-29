package com.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assignment.domain.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
//	@Query("SELECT t FROM User t where t.username = :username AND t.password = :password")
//	User findByUsernameAndPassword(@Param("username") String username, @Param("password")String password);
//	
//	@Query("SELECT t FROM User t where t.username = :username")
//	User findByUsername(@Param("username") String username);
} 