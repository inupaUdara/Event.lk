package com.dreportz;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Event.EO.DBconnect;
public class ReportDBUtil {

    private static boolean isSuccess;
    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Method to retrieve all event details from the database
    public static List<dereport> getallEvtdetails() {
        ArrayList<dereport> rep = new ArrayList<>();

        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from details  ";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String event_type = rs.getString(3);
                String participant_limit = rs.getString(4);
                String time_period = rs.getString(5);
                String instruction = rs.getString(6);
                String assign_organizer = rs.getString(7);
                String assign_coordinator = rs.getString(8);

                dereport de = new dereport(id, name, event_type, participant_limit, time_period, instruction, assign_organizer, assign_coordinator);
                rep.add(de);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rep;
    }

    // Method to insert event details into the database
    public static boolean insertdereport(String name, String event_type, String participant_limit, String time_period, String instruction, String assign_organizer, String assign_coordinator) {
        isSuccess = false;

        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "insert into details values (0, '" + name + "','" + event_type + "','" + participant_limit + "','" + time_period + "','" + instruction + "','" + assign_organizer + "','" + assign_coordinator + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Method to retrieve event details based on name
    public static List<dereport> validate(String NAME) {
        ArrayList<dereport> rep = new ArrayList<>();

        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from details where name= '" + NAME + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String nam = rs.getString(2);
                String event_type = rs.getString(3);
                String participant_limit = rs.getString(4);
                String time_period = rs.getString(5);
                String instruction = rs.getString(6);
                String assign_organizer = rs.getString(7);
                String assign_coordinator = rs.getString(8);

                dereport r = new dereport(id, nam, event_type, participant_limit, time_period, instruction, assign_organizer, assign_coordinator);
                rep.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rep;
    }

    // Method to update event details in the database
    public static boolean updatereport(String id, String name, String event_type, String participant_limit, String time_period, String instruction, String assign_organizer, String assign_coordinator) {
        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "update details set name='" + name + "',event_type='" + event_type + "',participant_limit='" + participant_limit + "',time_period='" + time_period + "',instruction='" + instruction + "',assign_organizer ='" + assign_organizer + "',assign_coordinator='" + assign_coordinator + "'" + "where id ='" + id + "'";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    // Method to retrieve event details based on ID
    public static List<dereport> getEventDetails(String Id) {
        int convertID = Integer.parseInt(Id);
        ArrayList<dereport> rep = new ArrayList<>();

        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from details where id= '" + convertID + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String event_type = rs.getString(3);
                String participant_limit = rs.getString(4);
                String time_period = rs.getString(5);
                String instruction = rs.getString(6);
                String assign_organizer = rs.getString(7);
                String assign_coordinator = rs.getString(8);

                dereport de = new dereport(id, name, event_type, participant_limit, time_period, instruction, assign_organizer, assign_coordinator);
                rep.add(de);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rep;
    }

    // Method to delete an event from the database
    public static boolean deletereport(String id) {
        int convId = Integer.parseInt(id);

        try {
            conn = DBconnect.getConnection();
            stmt = conn.createStatement();
            String sql = "delete from details where id= '" + convId + "'";
            int r = stmt.executeUpdate(sql);

            if (r > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
