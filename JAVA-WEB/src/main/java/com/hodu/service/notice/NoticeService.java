package com.hodu.service.notice;

import java.util.List;

import com.hodu.model.NoticeDTO;
import com.hodu.model.ReplyDTO;

public interface NoticeService {
	
	public List<NoticeDTO> getNotice();
	public NoticeDTO getOneNotice(int number);
	public int writeNotice(NoticeDTO nDTO);
	public int updateNotice(NoticeDTO nDTO);
	public int deleteNotice(NoticeDTO nDTO);
	public int writeReply(ReplyDTO rDTO);
	public List<ReplyDTO> getReply(Integer board_postnum);
	public int replyTotal(Integer board_postnum);
	public int updateReply(ReplyDTO rDTO);
	public int deleteReply(int rno);
	public int updateStar(Integer board_postnum);
	public int addHeart(Integer board_postnum);
	public String searchHeart(Integer board_postnum);
	public int updateHeart(Integer board_postnum, String show);
}
