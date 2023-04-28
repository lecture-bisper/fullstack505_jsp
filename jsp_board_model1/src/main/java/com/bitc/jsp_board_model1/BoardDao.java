package com.bitc.jsp_board_model1;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// 실제 데이터베이스와 연결해서 데이터를 CRUD하기 위한 클래스
public class BoardDao extends JDBConnect{
//  검색 결과 수
//  public int selectCount() {
//
//  }

//  전체 게시물 목록 출력
  public List<BoardDto> selectList() {
//    게시물의 목록을 저장할 빈 List 선언
    List<BoardDto> dataList = new ArrayList<BoardDto>();

//    게시물 목록을 가져올 SQL 쿼리 생성
    String sql = "SELECT num, title, id, postdate, visitcount FROM board ORDER BY num DESC ";

    try {
//      SQL 쿼리 명령을 위해서 Statement 객체 생성
      stmt = conn.createStatement();
//      SQL 쿼리문 실행, 결과 받아오기
      rs = stmt.executeQuery(sql);

//      가져온 결과물을 하나씩 출력
      while (rs.next()) {
//        게시물 1개의 정보를 저장할 수 있는 BoardDto 객체 생성
        BoardDto board = new BoardDto();

//        게시물 정보 저장
        board.setPostNum(rs.getInt("num"));
        board.setPostTitle(rs.getString("title"));
        board.setPostWriteUser(rs.getString("id"));
        board.setPostDate(rs.getString("postdate"));
        board.setPostVisitCount(rs.getInt("visitcount"));

//        게시물 전체 리스트를 저장하는 dataList에 BoardDto 객체 추가
        dataList.add(board);
      }
    }
    catch (SQLException e) {
      System.out.println("게시물 목록 조회 중 오류가 발생했습니다.");
      e.printStackTrace();
    }

    return dataList;
  }

//  지정한 게시물 내용 출력
//  public BoardDto selectBoard(int postNum) {
//
//  }

//  게시물 등록하기
  public void insertBoard(BoardDto board) {

  }

//  게시물 정보 수정하기
  public void updateBoard(BoardDto board) {

  }

//  게시물 삭제하기
  public void deleteBoard(int postNum) {

  }
  
//  게시물 조회수 올리기
  public void upateVisitCount(int postNum) {
    
  }
}
