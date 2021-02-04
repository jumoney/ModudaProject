package com.springbook.biz.user;

public interface UserService {

	//CRUD 기능의 메소드 구현
	
	//회원 정보 조회
	UserVO getUser(UserVO vo);
	
	//회원 정보 등록
	void insertUser(UserVO vo);
	
	//회원 정보 수정
	void updateUser(UserVO vo);
	
	//회원 정보 수정
	void deleteUser(UserVO vo);
	
	//로그인 검사 기능
	UserVO signUp(UserVO vo);

}