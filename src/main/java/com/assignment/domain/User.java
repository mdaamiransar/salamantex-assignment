package com.assignment.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//import org.hibernate.validator.constraints.NotBlank;

@Entity
@Getter @Setter
@ToString
public class User implements Serializable {

	private static final long serialVersionUID = -1425628817384978548L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@NotNull
	@Size(max=512)
	private String name;

	@Size(max=1000)
	private String description;
	
	@Size(max=1000)
	@Email(message = "Email should be valid")
	private String email;

	@Size(max=1000)
	private String bitcoinWalletId;
	
	@Max(value = 100000000, message = "BitcoinWallet Balance should not be greater than 1 billion")
	private BigDecimal bitcoinWalletBalance;

	@Size(max=1000)
	private String ethereumWalletId;
	
	@Max(value = 100000000, message = "Ethereum Wallet Balance should not be greater than 1 billion")
	private BigDecimal ethereumWalletBalance;
	
	private String maxAmount;
}