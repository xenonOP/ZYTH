/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package zyth.controllers;

import jakarta.servlet.http.HttpSession;
import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import zyth.database.*;

@Controller
public class mycontroller {
    
    @GetMapping("/")
    public String index()
    {
        return "index.jsp";
    }
    

   
}
