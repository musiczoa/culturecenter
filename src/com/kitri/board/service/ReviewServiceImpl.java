package com.kitri.board.service;

public class ReviewServiceImpl implements ReviewService {

	private static ReviewServiceImpl service;
	
	static{
		service = new ReviewServiceImpl();
	}
	
	private ReviewServiceImpl(){}
	
	public static ReviewServiceImpl getInstance(){
		return service;
	}
	
	

}
