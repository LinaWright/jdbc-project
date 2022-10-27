package com.cydeo.jdbctests;

import javax.xml.transform.Result;
import java.sql.*;

public class TestOracleConnection {
    /*
    How to INIT variable

    ALT + ENTER introduce local variable
     */
    public static void main(String[] args) throws SQLException {
        String dbURL="jdbc:oracle:thin:@54.167.139.116:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        //DriverManager class getConnection is used to make connection with database
        Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        //Statement helps us to execute Query
        Statement statement = connection.createStatement();

        //ResultSet stores data that we get from query execution
        ResultSet resultSet = statement.executeQuery("select * from regions");
        /*
        How to run query?
        --Choose query
        --CTRL + ENTER
        --Choose session
         */

        //next() --> move to cursor in next line
        //True if the new current row is valid
//        resultSet.next();
//
//        /*
//        getInt(index) will return Int if we have Int value in that colum
//            -index starts from 1 with SQL tables
//            getInt(columnLabel)
//
//         */
//        System.out.println(resultSet.getInt(1));
//        System.out.println(resultSet.getInt("REGION_ID"));
//
//        //get the region_name
//        System.out.println(resultSet.getString(2));
//
//        System.out.println(resultSet.getString("REGION_NAME"));
//
//        //move to the next row
//        resultSet.next();
//
//        //get "Americas"
//        System.out.println(resultSet.getInt("REGION_ID")+ "-" + resultSet.getString("REGION_NAME"));
//
//        //move to the next row
//        resultSet.next();
//
//        //get "Asia"
//        System.out.println(resultSet.getInt("REGION_ID")+ "-" + resultSet.getString("REGION_NAME"));
//
//        //move to the next row
//        resultSet.next();
//
//        //get "Middle East and Africa"
//        System.out.println(resultSet.getInt("REGION_ID")+ "-" + resultSet.getString("REGION_NAME"));
//
//        resultSet.next();
//        System.out.println(resultSet.next());

        while (resultSet.next()){
            System.out.println(resultSet.getInt("REGION_ID")+ "-" + resultSet.getString("REGION_NAME"));
        }
//close connection
        resultSet.close();
        statement.close();
        connection.close();
    }
}
