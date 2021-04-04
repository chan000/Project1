package org.ict.controller;


import java.util.List;

import org.ict.domain.FormVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.FormRestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/form")
public class FormRestController {
	
	@Autowired
	private FormRestService service;
	
	@GetMapping(value="/all", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<FormVO>> formList(SearchCriteria cri){
		
		ResponseEntity<List<FormVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<FormVO>>(service.formListPage(cri), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<FormVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value="/paging", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Integer> formPage(SearchCriteria cri) {
		
		ResponseEntity<Integer> entity = null;
		
		try {
			
			entity = new ResponseEntity<Integer>(service.formCount(cri.getKeyword()), HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@PostMapping(value="", consumes="application/json",
							produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formRegister(
							@RequestBody FormVO form){
		
		ResponseEntity<String> entity = null;
		
		try {
			service.formRegister(form);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/{fno}", consumes="application/json",
					produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formModify(@RequestBody FormVO form, @PathVariable("fno") Integer fno) {
		ResponseEntity<String> entity = null;
		
		try {
			form.setFno(fno);
			service.formModify(form);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/state/{fno}", consumes="application/json",
					produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formDelete(@PathVariable("fno") Integer fno) {
		ResponseEntity<String> entity = null;
		
		try {
			service.formRemove(fno);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

}