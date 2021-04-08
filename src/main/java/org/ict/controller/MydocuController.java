package org.ict.controller;

import org.ict.domain.BoardVO;
import org.ict.domain.PageMaker;
import org.ict.service.MydocuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/mymenu/*")
public class MydocuController {

	@Autowired
	private MydocuService service;

	@RequestMapping("/mydocu")
	public String mydocu(Model model) {
		return "/mymenu/mydocu";
	}

	@GetMapping("/mydocuread")
	public String docuread(Model model, Long bno) {
		model.addAttribute("board", service.get(bno));
		return "/mymenu/mydocuread";
	}

	@PostMapping("/mydocumodify")
	public String modify(Model model, Long bno) {
		BoardVO board = service.get(bno);

		model.addAttribute("board", board);

		return "/mymenu/mydocumodify";
	}

	@PostMapping("/modifyrun")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		service.modify(board);

		rttr.addFlashAttribute("bno", board.getBno());

		return "redirect:/mymenu/mydocuread?bno=" + board.getBno();
	}
	@PostMapping("/remove")
	public String remove(Long bno, RedirectAttributes rttr) {
		service.remove(bno);
		rttr.addFlashAttribute("bno", bno);
		
		return "redirect:/mymenu/mydocu";
	}

}
