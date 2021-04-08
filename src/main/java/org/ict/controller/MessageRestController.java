package org.ict.controller;

import java.util.List;

import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/message")
public class MessageRestController {

	@Autowired
	private MessageService service;
	
	@GetMapping(value = "/take/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MessageVO>> takeList(@PathVariable("mno") Integer mno){
		
		ResponseEntity<List<MessageVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<MessageVO>>(service.takeMessageList(mno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MessageVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}
	
	@GetMapping(value = "/send/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MessageVO>> sendList(@PathVariable("mno") Integer mno){
		
		ResponseEntity<List<MessageVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<MessageVO>>(service.sendMessageList(mno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MessageVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@GetMapping(value = "/takemno/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MemberVO>> takeMno(@PathVariable("mno") Integer mno) {
		
		ResponseEntity<List<MemberVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<MemberVO>>(service.takeMno(mno),HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MemberVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@PostMapping(value = "/sendmsg", consumes="application/json",
									produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> sendMessage(
							@RequestBody MessageVO vo) {
		ResponseEntity<String> entity = null;
		
		try {
			service.sendMsg(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
					value = "/remove/take/{msgno}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> removeTakeMessage (@PathVariable ("msgno") Integer msgno){
		ResponseEntity<String> entity = null;
		
		try {
			service.RemoveTakeMsg(msgno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/remove/send/{msgno}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> removeSendMessage (@PathVariable ("msgno") Integer msgno){
		ResponseEntity<String> entity = null;
	
		try {
			service.RemoveSendMsg(msgno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/detail/take/{msgno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<MessageVO> detailTakeMessage (@PathVariable ("msgno") Integer msgno) {
		
		ResponseEntity<MessageVO> entity = null;
		
		try {
			entity = new ResponseEntity<MessageVO>(service.detailTakeMsg(msgno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<MessageVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/detail/send/{msgno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<MessageVO> detailSendMessage (@PathVariable ("msgno") Integer msgno) {
		
		ResponseEntity<MessageVO> entity = null;
		
		try {
			entity = new ResponseEntity<MessageVO>(service.detailSendMsg(msgno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<MessageVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
