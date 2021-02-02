package com.springbook.view.kakaomap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springbook.biz.board.BoardVO;

@Controller
public class KakaoMapController {
		//맵
		@RequestMapping("/getKakaoMap.do")
		public String getKakaoMap() {
			return "WEB-INF/getKakaoMap.jsp"; // View 이름 리턴
		}	
}
