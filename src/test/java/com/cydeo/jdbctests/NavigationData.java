package com.cydeo.jdbctests;

import java.sql.*;

public class NavigationData {
    public static void main(String[] args) {
        String dbURL="jdbc:oracle:thin:@54.167.139.116:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        try {
            Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select *from REGIONS");
            rs.next();
            System.out.println("Region ID on the first row is " + rs.getString(1));
            System.out.println("Region ID on the first row is " + rs.getString("REGION_ID"));
            System.out.println("Region name on the first row is " + rs.getString(2));
            System.out.println("Region name on the first row is " + rs.getString("REGION_NAME"));

            rs.next();
            System.out.println("Region ID on the second row is " + rs.getString(1));
            System.out.println("Region ID on the second row is " + rs.getString("REGION_ID"));
            System.out.println("Region name on the second row is " + rs.getString(2));
            System.out.println("Region name on the second row is " + rs.getString("REGION_NAME"));

            rs.next();
            rs.next();
            rs.next();

            System.out.println(rs.next());

            rs.previous();


        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        //Statement helps us to execute Query

    }
}
