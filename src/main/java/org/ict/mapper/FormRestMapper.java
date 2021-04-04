package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.SearchCriteria;

public interface FormRestMapper {

	public List<FormVO> formList();
	
	public List<FormVO> formListPage(SearchCriteria cri);
	
	public int formCount(String keyword);
	
	public void formInsert(FormVO form);
	
	public void formUpdate(FormVO form);
	
	public void formDelete(Integer fno);
	
}
