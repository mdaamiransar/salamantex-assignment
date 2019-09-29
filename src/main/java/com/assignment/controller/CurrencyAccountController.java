package com.assignment.controller;

import java.util.List;

import javax.validation.Valid;

//import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import com.assignment.domain.CurrencyAccount;
import com.assignment.repository.CurrencyAccountRepository;


//@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping("/api")
public class CurrencyAccountController 
{   	
//	protected static Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private CurrencyAccountRepository currencyAccountRepository;
	
	@GetMapping("/currencyAccount")
    public List<CurrencyAccount> findAll() {

        return currencyAccountRepository.findAll();
    }
	
	@GetMapping("/currencyAccount/{id}")
    public ResponseEntity<CurrencyAccount> findById(@PathVariable(value = "id") Integer id) {
		CurrencyAccount entity = currencyAccountRepository.getOne(id);
        if(entity == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(entity);
    }
	
	@PostMapping("/currencyAccount")
    public CurrencyAccount create(@Valid @RequestBody CurrencyAccount entity) {

		return currencyAccountRepository.save(entity);
    }

}
