package org.ict.mapper;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.mapper.MydocuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MydocuServiceImpl implements MydocuService {

	@Autowired
	private MydocuMapper mapper;

	@Override
	public List<BoardVO> docuList(Integer mno) {
		return mapper.docuList(mno);
	}


	



	



	

}
