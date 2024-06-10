package kr.co.homework.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.homework.dto.PicDto;
import kr.co.homework.mapper.PicMapper;

@Service
public class PicService {
	@Autowired
	PicMapper mapper;

	public List<PicDto> getOnePic(String keyword) {
		List<PicDto> picDto = mapper.getOnePic(keyword);
		return picDto;
	}

}
