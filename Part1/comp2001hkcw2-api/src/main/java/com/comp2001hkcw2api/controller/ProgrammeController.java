package com.comp2001hkcw2api.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.comp2001hkcw2api.model.Programme;
import com.comp2001hkcw2api.sqlquery.ProgrammeSQL;

@RestController
public class ProgrammeController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProgrammeController.class);
	
	@Autowired
	private ProgrammeSQL pSQL;

	@GetMapping("/programmes")
	public List<Programme> getAllProg() 
	{
		logger.info("Get All Programmes");
		
		List<Programme> list = pSQL.getAllProg();
		return list;
	}
	
	@PostMapping("/programmes")
	public String createNewProg(@RequestBody Programme programme)
	{
		logger.info("createNewProg: {}", programme.getTitle());
		pSQL.insertNewProg(programme);
		return "Success";
	}
	
	@PutMapping("/programmes/{code}")
	public String updateProg(@PathVariable Integer code, @RequestBody Programme programme)
	{
		logger.info("Update Program code: {}, change title to {}", code, programme.getTitle());
		pSQL.updateProg(code, programme);
		return "Success";
	}
	
	@DeleteMapping("/programmes/{code}")
	public String deleteProg(@PathVariable Integer code) 
	{
		logger.info("Delete Programme: {}", code);
		pSQL.delProg(code);
		return "Success";
	}
}
