package com.hodu.service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.NoticeMapper;
import com.hodu.model.NoticeDTO;
import com.hodu.model.ReplyDTO;


@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeDTO> getNotice() {
		System.out.println(noticeMapper.getNotice());
		return noticeMapper.getNotice();
	}

	@Override
	public NoticeDTO getOneNotice(int number) {
		return noticeMapper.getOneNotice(number);
	}

	@Override
	public int writeNotice(NoticeDTO nDTO) {
		return noticeMapper.writeNotice(nDTO);
	}

	@Override
	public int updateNotice(NoticeDTO nDTO) {
		return noticeMapper.updateNotice(nDTO);
	}

	@Override
	public int deleteNotice(NoticeDTO nDTO) {
		return noticeMapper.deleteNotice(nDTO);
	}

	@Override
	public int writeReply(ReplyDTO rDTO) {
		return noticeMapper.writeReply(rDTO);
	}

	@Override
	public List<ReplyDTO> getReply(Integer board_postnum) {
		return noticeMapper.getReply(board_postnum);
	}

	@Override
	public int replyTotal(Integer board_postnum) {
		return noticeMapper.replyTotal(board_postnum);
	}

	@Override
	public int updateReply(ReplyDTO rDTO) {
		return noticeMapper.updateReply(rDTO);
	}

	@Override
	public int deleteReply(int rno) {
		return noticeMapper.deleteReply(rno);
	}

	@Override
	public int updateStar(Integer board_postnum) {
		return noticeMapper.updateStar(board_postnum);
	}

	@Override
	public int addHeart(Integer board_postnum) {
		// TODO Auto-generated method stub
		return noticeMapper.addHeart(board_postnum);
	}

	@Override
	public String searchHeart(Integer board_postnum) {
		return noticeMapper.searchHeart(board_postnum);
	}

	@Override
	public int updateHeart(Integer board_postnum, String show) {
		return noticeMapper.updateHeart(board_postnum, show);
	}

	
}
