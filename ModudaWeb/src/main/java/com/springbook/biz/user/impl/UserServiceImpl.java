package com.springbook.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.board.impl.BoardDAOJPA;
import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl  implements UserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserVO getUser(UserVO vo) {
		return null;
	}

	@Override
	public void insertUser(UserVO vo) {
		userRepository.save(vo);
		
	}

	@Override
	public void updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUser(UserVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	//로그인 검사 기능
	@Override
	public UserVO signUp(UserVO vo) {
		System.out.println("로그인 검사 실행");
		return userRepository.findUser(vo.getId(), vo.getPassword());	
	}
	
	

	
}
