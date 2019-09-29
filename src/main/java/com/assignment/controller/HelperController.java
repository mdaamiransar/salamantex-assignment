package com.assignment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelperController 
{	
	@RequestMapping("/user")
    public String getUserPage(Model model) {
		
		model.addAttribute("title", "User");
		model.addAttribute("userClickUser",true);

        return "cp/page";
    }
	
	@RequestMapping("/transaction")
    public String getTransactionsPage(Model model) {
		
		model.addAttribute("title", "Transactions");
		model.addAttribute("userClickTransaction",true);

        return "cp/page";
    }
	
	@RequestMapping("/currencyAccount")
    public String getCurrencyAccountPage(Model model) {
		
		model.addAttribute("title", "Currency Account");
		model.addAttribute("userClickCurrencyAccount",true);

        return "cp/page";
    }
}
