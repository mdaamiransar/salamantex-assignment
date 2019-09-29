package com.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assignment.domain.CurrencyAccount;

public interface CurrencyAccountRepository extends JpaRepository<CurrencyAccount, Integer> {
	
} 