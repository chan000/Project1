package org.ict.mapper;

import java.util.List;

import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;

public interface MessageMapper {

	public List<MessageVO> takeMessageList(Integer mno);
	
	public List<MessageVO> sendMessageList(Integer mno);
	
	public List<MemberVO> takeMno(Integer mno);
	
	public void sendMsg(MessageVO vo);
	
	public void deleteTakeMsg(Integer msgno);
	
	public void deleteSendMsg(Integer msgno);
	
	public MessageVO getTakeMsg(Integer msgno);
	
	public MessageVO getSendMsg(Integer msgno);
}
