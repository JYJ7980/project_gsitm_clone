package kr.co.homework.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class CustDto {
	private int cust_sn;			// 고객 일련번호
	private String cust_nm;			// 고객명
	private String eml_addr;		// 이메일 주소
	private String brdt;			// 생년월일
	private String home_telno;		// 자택 전화번호
	private String mbl_telno;		// 핸드폰번호
	private String pridtf_no;		// 개인식별번호
	private String cr_nm;			// 직업명
	private String road_nm_addr;	// 도로명 주소
	private String pic_sn_vl;		// 담당자 일련번호
	private String tkcg_dept_nm;	// 담당부서명
	private String first_reg_dt;	// 최초등록일시
	private String first_rgtr_sn;	// 최초 등록자 일련번호
	private String last_mdfcn_dt;	// 최종 수정 일시
	private String use_yn;			// 사용 여부

}
