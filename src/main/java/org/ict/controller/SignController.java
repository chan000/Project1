package org.ict.controller;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.BoardVO;
import org.ict.domain.PageMaker;
import org.ict.service.SignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sign/*")
public class SignController {
	
	// 공지사항 삭제 예정
	
	@Autowired
	private SignService service;
	
	@RequestMapping("/noticeList") // 공지사항 목록
	public String noticeList(Model model, Criteria cri) {
		
		model.addAttribute("noticeList", service.getNoticeList());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.getcountPage(cri));
		model.addAttribute("pageMaker", pageMaker);
		log.info(pageMaker.toString());
		
		return "/sign/noticeList";
	}
	
	@GetMapping("/noticeRead") // 공지사항 상세보기
	public String noticeRead(int bno, Model model) {
		log.info(service.noticeRead(bno));
		model.addAttribute("noticeRead", service.noticeRead(bno));
		
		return "/sign/noticeRead";
		
	}
	
	
	
	
	
	@PostMapping("/noticeWrite") // 공지사항 작성 POST
	public String noticeWrite(NoticeVO board, RedirectAttributes rttr) {
		
		service.noticeWrite(board);
		
		return "redirect:/sign/noticeList";
	}
	
	
	
	@GetMapping("/noticeWrite") // 공지사항 GET
	public String noticeWrite() {
		
		return "/sign/noticeWrite";
	}
	
	@GetMapping("/reportRead") // 보고서 상세보기
	public String reportRead(int bno, Model model) {
		
		model.addAttribute("reportRead", service.reportRead(bno));
		
		return "/sign/reportRead";
	
	}
	
	@PostMapping("/reportWrite") // 보고서 작성 POST
	public String reportWrite(BoardVO board , RedirectAttributes rttr, String seldpn) {
		
		service.reportWrite(board);
		
		
		
		return "redirect:/sign/signStateList";
	}
	
	@GetMapping("/reportWrite") // 보고서 작성 GET
	public String reportWrite(Model model) {
		
		model.addAttribute("deptSelect", service.deptSelect());
		
		return "/sign/reportWrite";
	}
	
	@PostMapping("/applicationWrite") // 신청서 작성 POST
	public String applicationWrite(BoardVO board , RedirectAttributes rttr, String seldpn) {
		
		service.reportWrite(board);
		
		
		
		return "redirect:/sign/applicationWrite";
	}
	
	@GetMapping("/applicationWrite") //신청서 GET
	public String applicationWrite(Model model) {
		
		model.addAttribute("deptSelect", service.deptSelect());
		
		return "/sign/applicationWrite";
	}
	
	@RequestMapping("/signSuccessList") // 문서열람
	public String signSuccessList(Model model, Criteria cri) {
		
		
		
		model.addAttribute("signStateListB", service.getListCriteriaB(cri));
		
		model.addAttribute("page", cri.getPage());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.getcountPage0(cri));
		model.addAttribute("pageMaker", pageMaker);
		log.info(pageMaker.toString());
		
		return "/sign/signSuccessList";
	}
	
	@RequestMapping("/signStateList") // 문서결재
	public String signStateList(Model model, Criteria cri) {
		
		
		model.addAttribute("signStateListA", service.getListCriteriaA(cri));
		model.addAttribute("signStateListB", service.getListCriteriaB(cri));
		
		model.addAttribute("page", cri.getPage());
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.getcountPage(cri));
		model.addAttribute("pageMaker", pageMaker);
		log.info(pageMaker.toString());
		
		return "/sign/signStateList";
	}
	
	
	
}












