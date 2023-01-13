package com.library.service.mylib;

import java.util.List;

import com.library.model.mylib.CartDTO;
import com.library.model.search.BookDTO;
import com.library.model.search.DateDTO;
import com.library.page.Criteria;

public interface CartService {
	boolean findCartGoods(CartDTO cartDTO);
	void addGoodsInCart(CartDTO cartDTO);

	// 도서 대출
	public void cart(CartDTO dto);

	// 대출 중인 해당 도서 수 카운트
	public int count(String isbn);

	// 대출 베스트 출력
	public List<CartDTO> book_rank(DateDTO date);

	// 대출자 상태 체크
	public int statusCheck(String user_id);

	// 대출자 대출 수 증가
	public void increase_count(String user_id);
	
	// 회원이 대출 중인 도서인지 체크
	public int loan_check(String user_id, String book_isbn);
	
	

	
	

}