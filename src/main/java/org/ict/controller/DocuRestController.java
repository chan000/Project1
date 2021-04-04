package org.ict.controller;

import java.util.List;

import org.apache.ibatis.annotations.AutomapConstructor;
import org.ict.domain.BoardVO;
import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.service.DocuRestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/docu")
public class DocuRestController {
	
	@Autowired
	private DocuRestService service;
	
	@GetMapping(value="/board", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<BoardVO>> boardList() {
		
		ResponseEntity<List<BoardVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<BoardVO>>(service.boardList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<BoardVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@GetMapping(value="/notice", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<NoticeVO>> noticeList() {
		
		ResponseEntity<List<NoticeVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<NoticeVO>>(service.noticeList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<NoticeVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@DeleteMapping(value="/boarddel/{bno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> boardRemove(@PathVariable("bno") int bno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.boardRemove(bno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@DeleteMapping(value="/noticedel/{nno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> noticeRemove(@PathVariable("nno") int nno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.noticeRemove(nno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
}
