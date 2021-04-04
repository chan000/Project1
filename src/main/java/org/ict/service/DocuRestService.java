package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

public interface DocuRestService {

	public List<BoardVO> boardList();
	
	public void boardRemove(int bno);
	
	public List<NoticeVO> noticeList();
	
	public void noticeRemove(int nno);
	
}
