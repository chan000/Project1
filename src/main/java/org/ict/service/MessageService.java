package org.ict.service;

import java.util.List;

import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;

public interface MessageService {

	public List<MessageVO> takeMessageList(Integer mno);
	
	public List<MessageVO> sendMessageList(Integer mno);
	
	public List<MemberVO> takeMno(Integer mno);
	
	public void sendMsg(MessageVO vo);
	
	public void RemoveTakeMsg(Integer msgno);
	
	public void RemoveSendMsg(Integer msgno);
	
	public MessageVO detailTakeMsg(Integer msgno);
	
	public MessageVO detailSendMsg(Integer msgno);
}
