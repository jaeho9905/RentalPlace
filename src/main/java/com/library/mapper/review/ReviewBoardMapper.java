package com.library.mapper.review;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.library.model.review.ReviewBoardDTO;
import com.library.page.Criteria;

@Mapper
public interface ReviewBoardMapper {

	/* 게시물 본문 / 조회수 */
	public ReviewBoardDTO reviewContent(Long review_no);
	public void updateView(Long review_no);
	
	
	/* 등록 / 수정 / 삭제 */
	public void reviewBoardInsert(ReviewBoardDTO dto);
	public void reviewBoardUpdate(ReviewBoardDTO dto);
	public void reviewBoardDelete(Long review_no);
	public String id_duplicate(String review_no);
	

	/* 게시판(페이징) / 총 게시물 / 게시판 정렬 */
	public List<ReviewBoardDTO> getListPage(Criteria cri, @Param("book_isbn")Long book_isbn);
	public int getTotal(Criteria cri);
	public void reset();
	
	/* 관리자 계정 확인 */
	public int check_admin(String user_id);
}
