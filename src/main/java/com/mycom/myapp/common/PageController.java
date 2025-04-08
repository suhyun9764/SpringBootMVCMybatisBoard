package com.mycom.myapp.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;

// jsp 페이지 이동 담당
@Controller
public class PageController {

	@GetMapping("/pages/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/pages/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/pages/board")
	public String board() {
		return "board";
	}
	
	// logout 페이지 이동으로 처리
	// LoginControoler 에 위치시킬 수도 있다.
//	@GetMapping("/pages/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "login";
//	}

	@GetMapping("/pages/json")
	@ResponseBody
	public LocalDateTime json(){
		return LocalDateTime.now();
	}
}
