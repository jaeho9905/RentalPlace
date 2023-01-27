package com.library.service.mylib;

import java.util.List;

import com.library.model.search.BookDTO;
import com.library.page.Criteria;

public interface MyLoanHistoryService {

	// 대출 내역 조회
	public List<BookDTO> loan_history(String user_id, Criteria cri, String start_date, String end_date);

	// 대출 수 출력
	public int get_total(String user_id, String start_date, String end_date);
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> front
>>>>>>> review
	
	
	//<!--=========== 찜하기 추기 =================-->
	// 찜한 내역 조회
	public List<BookDTO> like_history(String user_id, Criteria cri);
	
	// 찜한 도서 건수 출력
	public int get_total_like(String user_id);
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> review
	
	
	/*------------- 장바구니 ----------*/
	public List<BookDTO> cart_history(String user_id, Criteria cri);
	
	// 찜한 도서 건수 출력
	public int get_total_cart(String user_id);
	
<<<<<<< HEAD
	public int get_total_count (String user_id);
	
	public List<BookDTO> get_total_pay (String user_id, String priceStandard );
	

	public int get_total_final (String user_id, String priceStandard );
=======
	public int get_total_count (String bookCount);
	
	public List<BookDTO> get_total_pay (String bookCount, String priceStandard );
	

	public int get_total_final (String bookCount, String priceStandard );
=======
>>>>>>> buy
=======
>>>>>>> front
>>>>>>> review

}
