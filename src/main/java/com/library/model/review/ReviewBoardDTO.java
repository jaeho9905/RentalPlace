package com.library.model.review;

import java.sql.Timestamp;

import com.library.model.board.AnswerBoardDTO;

import lombok.Data;

@Data
public class ReviewBoardDTO {

	// 후기
<<<<<<< HEAD
	private Long review_no; //게시글번호
	private String review_content;
	private String writer_id;
	private Long book_isbn;  //책번호
=======
	private Long review_no;
	private String review_content;
	private String writer_id;
	private String writer_name;
>>>>>>> 409999c778d5b4b42c16ef162d890bb0cf9c2646
	private Timestamp review_reg_date;
	
	private AnswerBoardDTO reviewanswerList;

	private int count; // 관리자 계정 확인

}