package com.springbook.biz.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.ColumnDefault;

import lombok.Data;
import lombok.NoArgsConstructor;

// VO(Value Object)
@Entity
@Table(name="USER")
public class UserVO {
	@Id
	@GeneratedValue
	private int uid;
	private String id;
	private String password;
	@Column(columnDefinition = "boolean default false")
	private boolean isconnect;
	private String profileImg;
	@Column(columnDefinition = "boolean default false")
	private boolean isChating;
	@Column(name="INTRO_MESSAGE", columnDefinition = "varchar(100) default '안녕하세요'")
	private String introMessage= "안녕하세요";
	@Column(columnDefinition = "double default 33.450701")
	private double lat = 33.450701;
	@Column(columnDefinition = "double default 126.570667")
	private double lon = 126.570667;
	private String email;
	@Transient
	private String uploadFile;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean getIsconnect() {
		return isconnect;
	}
	public void setIsconnect(boolean isconnect) {
		this.isconnect = isconnect;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public boolean getIsChating() {
		return isChating;
	}
	public void setIsChating(boolean isChating) {
		this.isChating = isChating;
	}
	public String getIntroMessage() {
		return introMessage;
	}
	public void setIntroMessage(String introMessage) {
		this.introMessage = introMessage;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(String uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "UserVO [uid=" + uid + ", id=" + id + ", password=" + password + ", isconnect=" + isconnect
				+ ", profileImg=" + profileImg + ", isChating=" + isChating + ", introMessage=" + introMessage
				+ ", lat=" + lat + ", lon=" + lon + ", email=" + email + ", uploadFile=" + uploadFile + "]";
	}
	
	
	

}
