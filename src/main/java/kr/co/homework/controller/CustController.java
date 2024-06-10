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
		String birth = custDto.getPridtf_no().substring(0,6);
		int divisionCode=Integer.parseInt(custDto.getPridtf_no().substring(7,8));
		if(divisionCode == 1 || divisionCode ==2) {
			custDto.setBrdt("19"+birth);
		} else if (divisionCode == 3 || divisionCode == 4) {
			custDto.setBrdt("20"+birth);
		} // 주민번호에서 생년월일 추출하여  DTO에 삽입
		System.out.println(custDto.toString());
		custService.newCustConfirm(custDto);
		return "redirect:/newCustForm";
	}
	
	

}
