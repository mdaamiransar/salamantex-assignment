package com.assignment.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
//import org.springframework.data.jpa.repository.Temporal;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//import org.hibernate.validator.constraints.NotBlank;

@Entity
@Getter @Setter
@ToString
public class Transactions implements Serializable {

	private static final long serialVersionUID = -1425628817384978548L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private BigDecimal currencyAmount;
	
	@Enumerated(value=EnumType.STRING)
	private CurrencyType currencyType;
	
	private Integer sourceUserId;
	
	private Integer targetUserId;
	
	private String state;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date created;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date processed;
	
	private Boolean status;
}