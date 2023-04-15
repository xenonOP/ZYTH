/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package zyth.controllers;

import jakarta.servlet.http.HttpSession;
import java.sql.ResultSet;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController; 
import zyth.database.DBLoader;
/**
 *
 * @author hp
 */
@RestController
public class Login {
     @GetMapping("/Login")
    public String CheckLogin(HttpSession session, @RequestParam String Email, @RequestParam String pass)
    {
        try {
            ResultSet rs = DBLoader.executeQuery("select * from admin");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("username");
                p = rs.getString("password");
                if (u.equalsIgnoreCase(Email)) {
                    found1 = true;
                    if (p.equals(pass)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } 
                else {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                session.setAttribute("email", Email);
               return "success";
            } else if (found1 == false && found2 == true) {
                return "Enter correct Username";
            } else if (found2 == false && found1 == true) {
                return "Enter Correct password";
            } else {
               return "Enter Correct Details";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    
}
