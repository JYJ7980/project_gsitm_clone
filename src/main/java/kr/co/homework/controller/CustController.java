package kr.co.homework.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.homework.dto.CustDto;
import kr.co.homework.service.CustService;

@Controller
public class CustController {
	@Autowired
	CustService custService;
	
	@GetMapping("/newCustForm")
	public String newCustForm(Model model) {
		LocalDate localDate = LocalDate.now();
		model.addAttribute("serverDate", localDate);
		return "/test/input_test";
	}
	
	@PostMapping("/newCustConfirm")
	public String newCustConfirm(CustDto custDto) {
		System.out.println(custDto.toString());
		return "redirect:/newCustForm";
	}

}
