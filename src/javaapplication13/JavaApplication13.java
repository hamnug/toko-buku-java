/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication13;

//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;

public class JavaApplication13 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        new FormUtama().setVisible(true);
//        Connection connection = null;
//        try {
//            // buat koneksi ke server mysql.
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            connection = DriverManager.getConnection(
//                "jdbc:mysql://localhost:3306/tokobuku", "root", "");
//
//            // siapkan objek statement untuk query
//            Statement statement;
//            statement = connection.createStatement();
//            ResultSet resultSetBarang, resultSetKonsumen;
//
//            // eksekusi query
//            resultSetBarang = statement.executeQuery("select * from barang");
//            resultSetKonsumen =  statement.executeQuery("Select * from konsumen");
//            
//            // baca dan tampilkan data dari query
////            String kode;
////            String nama;
//            
//            while (resultSetBarang.next()) { // baca data & geser kursor ke record selanjutnya
//               String kode = resultSetBarang.getString("kode"); // baca kolom "kode"
//               String nama = resultSetBarang.getString("nama"); // baca kolom "nama"
//                System.out.println("kode : " + kode + " nama : " + nama); // tampilkan data
//            }
//            
//            while (resultSetKonsumen.next()) {
//               String id = resultSetKonsumen.getString("id");
//               String nama = resultSetKonsumen.getString("nama");
//               String telepon = resultSetKonsumen.getString("telepon");
//               System.out.println("id : " + id + " nama : " + nama + " No. Telepon : " + telepon);
//            }
//
//            // hapus objek dan koneksi
//            resultSetBarang.close();
//            resultSetKonsumen.close();
//            statement.close();
//            connection.close();
//        }
//        catch (Exception exception) {
//            // tampilkan pesan error (jika terjadi kesalahan)
//            System.out.println(exception);
//        }
    }
    
}
