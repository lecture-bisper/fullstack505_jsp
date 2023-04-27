package com.bitc.jsp_0427;

import java.sql.*;

public class JDBConnect {
  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  private String dbDriver;
  private String dbUrl;
  private String dbUserId;
  private String dbUserPw;

  public JDBConnect() {
    dbUrl = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
    dbUserId = "full505";
    dbUserPw = "full505";
  }

  public JDBConnect(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    this.dbDriver = dbDriver;
    this.dbUrl = dbUrl;
    this.dbUserId = dbUserId;
    this.dbUserPw = dbUserPw;
  }

  public void open() {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
      System.out.println("Database Connection Open!! 한글로 하면??");
    }
    catch (SQLException e) {
      System.out.println("Database Connection Open Error");
      System.out.println("SQLException : " + e.getMessage());
      e.printStackTrace();
    } catch (ClassNotFoundException e) {
      throw new RuntimeException(e);
    }
  }

  public void close() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }

      System.out.println("데이터 베이스 접속 종료");
    }
    catch (Exception e) {}
  }
}
