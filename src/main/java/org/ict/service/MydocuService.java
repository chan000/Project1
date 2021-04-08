package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

public interface MydocuService {

	public List<BoardVO> docuList(Integer mno);
	
	public BoardVO get(Long bno);
	
	public boolean modify(BoardVO board);

	public boolean remove(Long bno);

	public List<BoardVO> getListPage(SearchCriteria cri);

	public int getCountPage(SearchCriteria cri);





}
