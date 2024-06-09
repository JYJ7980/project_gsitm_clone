package kr.co.homework.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ConsultationDto {
	private int cunsultation_no;		// 상담내역 일련번호
	private int cust_no;				// 고객 일련번호
	private String pic_sn_vl;			// 담당자 일련번호
	private String cons_date;			// 상담 일자
	private String consultation;		// 상담 내용
}
