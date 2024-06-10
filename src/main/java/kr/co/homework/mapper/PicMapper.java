package kr.co.homework.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.homework.dto.PicDto;

@Mapper
public interface PicMapper {

	List<PicDto> getOnePic(@Param("keyword")String keyword);

}
