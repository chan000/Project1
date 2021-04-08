package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.DocuRestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DocuRestServiceImpl implements DocuRestService {

	@Autowired
	DocuRestMapper mapper;
	
	@Override
	public List<BoardVO> boardListPage(Criteria cri) {
		return mapper.boardListPage(cri);
	}
	
	@Override
	public int boardCount() {
		return mapper.boardCount();
	}
	
	@Override
	public List<BoardVO> boardListPageSearch(Criteria cri, SearchCriteria search) {
		return mapper.boardListPage(cri);
	}
	
	@Override
	public int boardCountSearch(SearchCriteria search) {
		return mapper.boardCountSearch(search);
	}
	
	@Override
	public void boardRemove(int bno) {
		mapper.boardDelete(bno);
	}

	@Override
	public List<NoticeVO> noticeList() {
		return mapper.noticeList();
	}

	@Override
	public void noticeRemove(int nno) {
		mapper.noticeDelete(nno);
	}

}
