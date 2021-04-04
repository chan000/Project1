package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;
import org.ict.mapper.SignMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignServiceImpl implements SignService{

	@Autowired
	private SignMapper mapper;
	

	@Override
	public List<NoticeVO> getNoticeList() {
		
		return mapper.getNoticeList();
	}

	@Override
	public NoticeVO noticeRead(int bno) {
		
		NoticeVO board = new NoticeVO();
		
		board = mapper.getNoticeRead(bno);
		
		return board;
	}

	@Override
	public void noticeWrite(NoticeVO board) {
		
		mapper.noticeWrite(board);
	}

	@Override
	public BoardVO reportRead(int bno) {
		
		BoardVO document = new BoardVO();
		
		document = mapper.reportRead(bno);
		
		return document;
	}

	@Override
	public void reportWrite(BoardVO document) {
		
		mapper.reportWrite(document);
	}

	@Override
	public List<BoardVO> getListCriteriaA(Criteria cri) {
		
		return mapper.signStateListA(cri);
	}

	@Override
	public List<BoardVO>  getListCriteriaB(Criteria cri) {
		
		return mapper.signStateListB(cri);
	}

	@Override
	public int getcountPage(Criteria cri) {
		
		return mapper.countPageNum(cri);
	}

	@Override
	public int getcountPage0(Criteria cri) {
		
		return mapper.countPageNum0(cri);
	}
	
	@Override
	public List<DeptVO> deptSelect() {
		
		return mapper.deptSelect();
	}


	

	

	
	
	
	
	

}
