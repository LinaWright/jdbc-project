package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_LibraryDBTest {
    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY";

    @Test
    public void testUserCount() {
        //Creat DB connection
        DB_Util.createConnection(url, username, password);

        //run query
        DB_Util.runQuery("select count(*) from users");

        //get how many user we have from DB
        String exceptedCount = DB_Util.getCellValue(1, 1);

        //Get how many user that we have from the UI
        /*
        We need to implement UI steps to get data from UI manually
         */
        String actualCount = "267";

        //Make an assertion
        Assertions.assertEquals(exceptedCount, actualCount);

        //destroy-close connection
        DB_Util.destroy();
    }

    @Test
    public void testBookCount() {
        //Creat DB connection
        DB_Util.createConnection(url, username, password);

        //run query
        DB_Util.runQuery("select count(*) from books");

        //Get How many book we have from DB
        String expectedBookCount = DB_Util.getFirstRowFirstColumn();

        //Get how many book we have from UI
        String actualBookCount = "1405";

        //Make an assertion
        Assertions.assertEquals(expectedBookCount, actualBookCount);

        //close connection
        DB_Util.destroy();

    }
}
