package com.cydeo.jdbctests;

import java.sql.*;

public class LoopingResultSet {
    public static void main(String[] args) {

        String dbURL = "jdbc:oracle:thin:@54.167.139.116:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";



            try {
                Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
                Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = statement.executeQuery("select *from REGIONS");

               while (rs.next()){
                   System.out.println(rs.getString(1)+" | " + rs.getString(2));
               }
                rs.beforeFirst();//reset the position
                System.out.println();
                while (rs.next()){
                    //getting row number
                    System.out.println("Row number is: " +  rs.getRow());
                    System.out.println(rs.getString(1)+" | " + rs.getString(2));
                }
                System.out.println();
                //get row count --> move cursor to the last row anf fet the row number
                rs.last();
                System.out.println("Row count is: " + rs.getRow());


            } catch (SQLException e) {
                System.out.println("ERROR HAS OCCURRED" + e.getMessage());
            }


    }
}
