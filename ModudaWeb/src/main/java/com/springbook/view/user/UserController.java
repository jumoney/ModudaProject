package com.springbook.view.user;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.springbook.biz.board.BoardService;
import com.springbook.biz.board.BoardVO;
import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;
import com.springbook.biz.user.impl.UserDAOJPA;
import com.springbook.biz.user.impl.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	//로그인
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면으로 이동");
		return "WEB-INF/login.jsp";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(UserVO vo, HttpSession session) {
		System.out.println("로그인 인증 처리...(미구현)");
		
		if(userService.signUp(vo) == null) {
			System.out.println("로그인 실패");
			return "WEB-INF/login.jsp";
		} else {
			session.setAttribute("user", "sibal");
			return "redirect:getKakaoMap.do";
		}
	}
	
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "WEB-INF/login.jsp";
	}
	
	//회원 가입
	@RequestMapping("/signUp.do")
	public String signUp(HttpSession session) {
		session.invalidate();
		return "WEB-INF/signUp.jsp";
	}
	
	//유저 등록
	@RequestMapping(value="/insertUser.do", method=RequestMethod.POST)
	public String insertBoard(UserVO vo) throws IOException {
		userService.insertUser(vo);
		return "redirect:login.do";
			
	}
	

}
