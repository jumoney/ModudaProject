package com.springbook.biz.user.impl;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.springbook.biz.user.UserVO;

@Repository
public interface UserRepository extends JpaRepository<UserVO, Long>{
	@Query("select m from UserVO m where id = :id and password = :password")
	UserVO findUser(@Param("id") String id,@Param("password") String password);
}
