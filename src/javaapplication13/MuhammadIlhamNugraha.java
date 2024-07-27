/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication13;

import java.sql.Connection;
import java.sql.DriverManager;

public class MuhammadIlhamNugraha {
    public static final String NAMA = "Muhammad Ilham Nugraha";  // ganti jadi nama Anda
    public static final String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String DBCONNECTION = "jdbc:mysql://localhost:3306/tokobuku"; // sesuaikan
    public static final String DBUSER = "root"; // sesuaikan
    public static final String DBPASS = ""; // sesuaikan
    
//     fungsi untuk menyederhanakan perintah untuk koneksi ke database.
//     perintah:
//          Connection conn;
//          Class.forName(DBDRIVER);
//          conn = DriverManager.getConnection(DBCONNECTION,DBUSER,DBPASS);
//     menjadi:
//          Connection conn;
//          conn = Global.db();
    public static Connection db() {
        try {
            Class.forName(DBDRIVER);
            return DriverManager.getConnection(DBCONNECTION,DBUSER,DBPASS);
        }catch(Exception e) {
            return null;
        }
    }
}
