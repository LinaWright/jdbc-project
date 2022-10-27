package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {

    String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        //ResultSet.TYPE_SCROLL_INSENSITIVE --> To be able eo scroll the cursor dynamicly and jump tp specific rows we are going to use that parameter into createStatement
        //ResultSet.CONCUR_READ_ONLY  --> we are saying I am not going to update anything into database

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees" );

        //first row
        rs.next();
        System.out.println(rs.getString(1)+" " +rs.getString(2));

        //second
        rs.next();
        System.out.println(rs.getString(1)+" " +rs.getString(2));

        //last row --> move the cursor to the last row in this resultSet object
        rs.last();
        System.out.println(rs.getString(1)+" " +rs.getString(2));
        //java.sql.SQLException: Invalid operation for forward only resultSet : last

        System.out.println("===========Get row===========");
        //get row
        System.out.println(rs.getRow());

        System.out.println("===========Absolute===========");
        //jump to row 10
        System.out.println(rs.absolute(10));
        System.out.println(rs.getString(1)+" " +rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("===========Previous===========");
        rs.previous();
        System.out.println(rs.getString(1)+" " +rs.getString(2));
        System.out.println(rs.getRow());

        System.out.println("===========Print all table dynamic===========");
        //so that it'll start at the first row
        rs.beforeFirst();
        //To print each row dynamically
        while(rs.next()){
            System.out.println(rs.getRow()+"-"+rs.getString(1)+" " +rs.getString(2));
        }

        //close conn
        rs.close();
        statement.close();
        conn.close();

    }
}
