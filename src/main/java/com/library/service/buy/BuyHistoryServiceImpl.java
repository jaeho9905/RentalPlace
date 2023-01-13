package com.library.service.buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.mapper.buy.BuyHistoryMapper;
import com.library.model.search.BookDTO;
import com.library.page.Criteria;

@Service
public class BuyHistoryServiceImpl implements BuyHistoryService {

	@Autowired
	private BuyHistoryMapper mapper;

	// 구매 내역 조회
	@Override
	public List<BookDTO> buy_history(String user_id, Criteria cri) {
		return mapper.buy_history(user_id, cri);
	}
	
	// 구매 수 출력
	@Override
	public int get_total(String user_id) {
		return mapper.get_total(user_id);
	}


}
