package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;

public interface SignService {

	public List<NoticeVO> getNoticeList();

	public NoticeVO noticeRead(int bno);
	
	public void noticeWrite(NoticeVO board);
	
	public BoardVO reportRead(int bno);
	
	public void reportWrite(BoardVO board);
	
	public List<BoardVO> getListCriteriaA(Criteria cri);
	
	public List<BoardVO>  getListCriteriaB(Criteria cri);
	
	public int getcountPage(Criteria cri);
	
	public int getcountPage0(Criteria cri);
	
	public List<DeptVO> deptSelect();
	
}
