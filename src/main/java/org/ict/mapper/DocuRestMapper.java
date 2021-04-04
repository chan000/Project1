package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

public interface DocuRestMapper {
	
	public List<BoardVO> boardList();
	
	public void boardDelete(int bno);
	
	public List<NoticeVO> noticeList();
	
	public void noticeDelete(int nno);
	
}
