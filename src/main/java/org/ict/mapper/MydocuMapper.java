package org.ict.mapper;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

public interface MydocuMapper {


	public BoardVO read(Long bno);
	

	public List<BoardVO> docuList(Integer mno);


	public int update(BoardVO board);


	public boolean delete(Long bno);
	
	public List<BoardVO> listPage(SearchCriteria cri);
	
	public int countPageNum(SearchCriteria cri);

}
