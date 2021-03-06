package com.hodu.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class NoticeDTO {
	
	private Integer notice_postnum;
	private String member_id;
	private String notice_type;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	private Integer notice_views;
	private String notice_show;
	private Double notice_review_star;

}
