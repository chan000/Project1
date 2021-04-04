package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;

public interface SignMapper {

	public List<NoticeVO>  getNoticeList();

	public NoticeVO getNoticeRead(int bno);
	
	public List<BoardVO> signStateListA(Criteria cri);
	
	public List<BoardVO> signStateListB(Criteria cri);
	
	public void noticeWrite(NoticeVO notice);

	public BoardVO reportRead(int bno);
	
	public void reportWrite(BoardVO board);
	
	public int countPageNum(Criteria cri);
	
	public int countPageNum0(Criteria cri);
	
	
	
	public List<DeptVO> deptSelect();
}
