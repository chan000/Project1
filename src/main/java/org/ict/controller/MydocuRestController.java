package org.ict.controller;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.service.MydocuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/mymenu")
public class MydocuRestController {

	@Autowired
	 private MydocuService service;
	
	@GetMapping(value = "/docu/{mno}",
			produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<BoardVO>> doculist(@PathVariable ("mno") Integer mno) {

		ResponseEntity<List<BoardVO>> entity = null;

		try {
			entity = new ResponseEntity<>(service.docuList(mno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
