package com.cydeo.jdbctests;

import java.sql.*;

public class NavigatingResultSet1 {
    public static void main(String[] args) {

        String dbURL = "jdbc:oracle:thin:@54.167.139.116:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";


        {
            try {
                Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
                Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = statement.executeQuery("select *from REGIONS");

                rs.first();
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));

                rs.last();
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));

                rs.previous();
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));

                rs.absolute(2); //move to the specific row
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));

                rs.beforeFirst();
                rs.next();
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));

                rs.afterLast();
                rs.previous();
                System.out.println(rs.getString("REGION_ID") + "" + rs.getString("REGION_NAME"));



            } catch (SQLException e) {
                System.out.println("ERROR HAS OCCURRED" + e.getMessage());
            }
        }

    }
}
