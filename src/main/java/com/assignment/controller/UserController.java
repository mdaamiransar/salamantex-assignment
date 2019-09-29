package com.assignment.controller;

import java.util.List;

import javax.validation.Valid;

//import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.assignment.domain.User;
import com.assignment.repository.UserRepository;


//@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping("/api")
public class UserController 
{   	
//	protected static Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/user")
    public List<User> findAll() {

        return userRepository.findAll();
    }
	
//	@GetMapping("/user/{id}")
//    public User getOne(@PathVariable(value = "id") Integer id) {
//
//        return userRepository.getOne(id);
//    }
	
	@GetMapping("/user/{id}")
    public ResponseEntity<User> findById(@PathVariable(value = "id") Integer id) {
		User entity = userRepository.getOne(id);
        if(entity == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok().body(entity);
    }
	
	@PostMapping("/user")
    public User create(@Valid @RequestBody User entity) {

		return userRepository.save(entity);
    }

}
