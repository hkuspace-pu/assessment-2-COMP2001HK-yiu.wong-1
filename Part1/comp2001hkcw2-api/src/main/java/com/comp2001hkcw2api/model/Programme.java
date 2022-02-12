package com.comp2001hkcw2api.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="programmes")
public class Programme {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer code;
	
	@Column(nullable=false)
	private String title;
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
