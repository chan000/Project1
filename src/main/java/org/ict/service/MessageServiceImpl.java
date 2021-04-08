package org.ict.service;

import java.util.List;

import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.mapper.MessageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageMapper mapper;
	
	@Override
	public List<MessageVO> takeMessageList(Integer mno) {
		return mapper.takeMessageList(mno);
	}

	@Override
	public List<MessageVO> sendMessageList(Integer mno) {
		return mapper.sendMessageList(mno);
	}

	@Override
	public List<MemberVO> takeMno(Integer mno) {
		return mapper.takeMno(mno);
	}

	@Override
	public void sendMsg(MessageVO vo) {
		mapper.sendMsg(vo);
	}

	@Override
	public void RemoveTakeMsg(Integer msgno) {
		mapper.deleteTakeMsg(msgno);
	}

	@Override
	public void RemoveSendMsg(Integer msgno) {
		mapper.deleteSendMsg(msgno);
	}

	@Override
	public MessageVO detailTakeMsg(Integer msgno) {
		return mapper.getTakeMsg(msgno);
	}

	@Override
	public MessageVO detailSendMsg(Integer msgno) {
		return mapper.getSendMsg(msgno);
	}

}
