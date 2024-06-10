package kr.co.homework.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.homework.dto.PicDto;
import kr.co.homework.service.PicService;

@Controller
public class PicController {
	@Autowired
	PicService picService;
	
	@GetMapping("/ajaxTest")
	public String likeIdol() {
		return "/test/ajax_test";
	}
	
	@PostMapping("/searchAjax")
	@ResponseBody
	public List<PicDto> getOnePic(@RequestBody Map<String, String> body) {
		String keyword = body.get("keyword");
		System.out.println("keyword = " + keyword);
		List<PicDto> picDto = picService.getOnePic(keyword);
		System.out.println("picDto : " + picDto.toString());
		return picDto;
	}

}
