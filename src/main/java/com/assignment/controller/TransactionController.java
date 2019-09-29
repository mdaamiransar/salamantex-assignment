package com.assignment.controller;

import java.util.Date;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;

import javax.validation.Valid;

//import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.assignment.domain.Transactions;
import com.assignment.repository.TransactionRepository;

@RestController
@RequestMapping("/api")
public class TransactionController 
{   	
//	protected static Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	@GetMapping("/transaction")
    public List<Transactions> findAll() {

        return transactionRepository.findAll();
    }
	
	@GetMapping("/transaction/{id}")
    public ResponseEntity<Transactions> findById(@PathVariable(value = "id") Integer id) {
		Transactions entity = transactionRepository.getOne(id);
        if(entity == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(entity);
    }
	
	@PostMapping("/transaction")
    public Transactions create(@Valid @RequestBody Transactions entity) {
		
		entity.setCreated(new Date());
		entity.setProcessed(new Date());
		entity.setStatus(true);

//		Queue<Transactions> transactionQueue=new PriorityQueue<Transactions>();
//		transactionQueue.add((Transactions) transactionQueue);
		
		return transactionRepository.save(entity);
    }
	
	@GetMapping("/transaction/user/{id}")
    public ResponseEntity<List<Transactions>> findBySourceUserId(@PathVariable(value = "id") Integer sourceUserId) {
		List<Transactions> entity = transactionRepository.findBySourceUserId(sourceUserId);
        if(entity == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(entity);
    }
	
	@GetMapping("/transaction/state/{state}")
    public ResponseEntity<List<Transactions>> findByState(@PathVariable(value = "state") String state) {
		List<Transactions> entity = transactionRepository.findByState(state);
        if(entity == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(entity);
    }
	
	@GetMapping(value = "/transaction/{id}/activation")
	public String manageTransactionActivation(@PathVariable Integer id) {		
		Transactions entity = transactionRepository.getOne(id);
		Boolean isActive = entity.getStatus();
		entity.setStatus(!isActive);
		transactionRepository.save(entity);		
		return (isActive)? "Transaction Dectivated Successfully!": "Transaction ID Activated Successfully";
	}
	

}
