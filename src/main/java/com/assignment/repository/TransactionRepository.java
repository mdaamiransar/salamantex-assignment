package com.assignment.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.assignment.domain.Transactions;

public interface TransactionRepository extends JpaRepository<Transactions, Integer> {
	
	List<Transactions> findBySourceUserId(Integer sourceUserId);
	
	List<Transactions> findByState(String state);
	
} 