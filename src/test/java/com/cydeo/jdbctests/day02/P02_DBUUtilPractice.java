package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUUtilPractice {
    @Test
    public void task1(){
        //Creat DB connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");

        //Get all data as List of Map
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        for (Map<String,String>eachRowMap:allRowAsListOfMap) {
            System.out.println(eachRowMap);
        }

        System.out.println(DB_Util.getFirstRowFirstColumn());
        //destroy-close connection
        DB_Util.destroy();
    }

    @Test
    public void task2(){
        //Creat DB connection
        DB_Util.createConnection();

        //run query
        //select count(*) from employees
        DB_Util.runQuery("select count(*) from employees");

        //How many employees we have
        System.out.println(DB_Util.getFirstRowFirstColumn());
        System.out.println(DB_Util.getCellValue(1, 1));

        //destroy-close connection
        DB_Util.destroy();
    }
}
