package com.library.mapper.buy;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.library.model.search.BookDTO;
import com.library.page.Criteria;

public interface BuyHistoryMapper {
	// 구매 내역 조회
		public List<BookDTO> buy_history(@Param("user_id") String user_id, @Param("cri") Criteria cri
				);

	// 구매 수 출력
	public int get_total(@Param("user_id") String user_id);

	}
