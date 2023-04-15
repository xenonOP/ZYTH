package zyth.controllers;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import lombok.experimental.PackagePrivate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import zyth.database.*;

@RestController
public class ALLController {

    @Autowired
    private EmailSenderService service;

    @PostMapping("/AdminLogin")
    public String adminLogin(HttpSession session, @RequestParam String Amail, @RequestParam String APass) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM zyth.admin");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("adminEmail");
                p = rs.getString("adminPass");
                if (u.equalsIgnoreCase(Amail)) {
                    found1 = true;
                    if (p.equals(APass)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } else {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                session.setAttribute("user", u);
                return "success";
            } else if (found1 == false && found2 == true) {
                return "Enter correct username";
            } else if (found2 == false && found1 == true) {
                return "Enter correct password";
            } else {
                return "Enter Correct Details";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errors";
        }

    }

    @GetMapping("/Class")
    public String TrainerLoad() {
        try {
            String Class = new RDBMStoJSON().generateJSON("Select * from zyth.class");
            return Class;
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @GetMapping("/AppClass")
    public String AppClass(@RequestParam int Classid) {
        try {
            ResultSet rd = DBLoader.executeQuery("select * from zyth.class where Classid=" + Classid);
            if (rd.next()) {
                rd.moveToCurrentRow();
                rd.updateString("status", "approve");
                rd.updateRow();
                return "success";
            } else {
                return "error occured";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @GetMapping("/DeleteClass")
    public String DeleteClass(@RequestParam int Classid) {
        try {
            ResultSet rd = DBLoader.executeQuery("select * from zyth.class where Classid=" + Classid);
            if (rd.next()) {
                rd.moveToCurrentRow();
                rd.updateString("status", "pending");
                rd.updateRow();
                return "success";
            } else {
                return "error occured";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @PostMapping("/UserLogin")
    public String UserLogin(HttpSession session, @RequestParam String Umail, @RequestParam String UPass) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM zyth.users");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("useremail");
                p = rs.getString("password");
                if (u.equalsIgnoreCase(Umail)) {
                    found1 = true;
                    if (p.equals(UPass)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } else {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                session.setAttribute("user", u);
                return "success";
            } else if (found1 == false && found2 == true) {
                return "Enter correct username";
            } else if (found2 == false && found1 == true) {
                return "Enter correct password";
            } else {
                return "Enter Correct Details";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errors";
        }

    }

    @GetMapping("/EmailVerifier")
    public String ChckEmail(@RequestParam String Email) {
        int OTP;
        System.out.println("here Email---->:" + Email);
        int Rand = (int) (Math.random() * 100000);
        OTP = Rand;
        String ot = Rand + "";
        try {
            service.sendSimpleEmail(Email, "Dear \"" + Email.split("@")[0] + "\",\n"
                    + "\n"
                    + "As part of our ongoing efforts to enhance account security, we have implemented a one-time password (OTP) system for your account. This means that in order to access your account, you will need to enter a unique OTP that will be sent to you via email.\n"
                    + "\n"
                    + "Please find below your one-time password: [" + Rand + "]\n"
                    + "\n"
                    + "Please note that this OTP is valid for only one use and for a limited time period. Once used or expired, you will need to request a new OTP to access your account.\n"
                    + "\n"
                    + "If you did not request an OTP, or if you suspect any unauthorized access to your account, please contact our customer support team immediately.\n"
                    + "\n"
                    + "Thank you for your cooperation in maintaining the security of your account.\n"
                    + "\n"
                    + "Best regards,\n"
                    + "Zyth", "Your One time Password for ZYTH");
            return ot;
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @PostMapping("/UserSignup")
    public String UserSignup(@RequestParam String UEMAIL, @RequestParam String First, @RequestParam String last,
            @RequestParam String phn, @RequestParam String zip, @RequestParam String pass, @RequestParam String extra, @RequestParam String city) {
        System.out.println(pass);
        System.out.println(UEMAIL);
        try {
            ResultSet rs = DBLoader.executeQuery("select * from zyth.users where useremail='" + UEMAIL + "'");
            if (rs.next()) {
                return "exists";
            } else {
                rs.moveToInsertRow();
                rs.updateString("username", First + " " + last);
                rs.updateString("password", pass);
                rs.updateString("useremail", UEMAIL);
                rs.updateString("phone", phn);
                rs.updateString("zip", zip);
                rs.updateString("city", city);
                rs.updateString("otherdetails", extra);
                rs.insertRow();
                return "success";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "Exception";
        }
    }

    @PostMapping("/AddNewClass")
    public String AddClass(@RequestParam String ClassName, @RequestParam String starttime, @RequestParam String MonthPrice, @RequestParam String WeekPrice, @RequestParam String SinglePrice,
            @RequestParam String endtime, @RequestParam String overview, @RequestParam String items, @RequestParam MultipartFile f69) throws SQLException, Exception {
        try {
            String old_name = f69.getOriginalFilename();
            int pos = old_name.lastIndexOf(".");
            String ext = old_name.substring(pos);
            String new_name = System.currentTimeMillis() + ext;
            InputStream in = f69.getInputStream();
            FileOutputStream fout = new FileOutputStream("C:/Users/hp/Documents/NetBeansProjects/Zyth/src/main/webapp/myuploads/" + new_name);
            long filesize = f69.getSize();
            long count = 0;
            int r;
            byte b[] = new byte[100000];
            while (true) {
                r = in.read(b, 0, 100000);
                fout.write(b, 0, r);
                count += r;
                if (count == filesize) {
                    break;
                }
            }
            fout.close();
            System.out.println("-----File Saved------");
            ResultSet rs = DBLoader.executeQuery("select * from zyth.class where ClassName='" + ClassName + "'");
            if (rs.next()) {
                return "alreadyexists";
            } else {
                rs.moveToInsertRow();
                rs.updateString("ClassName", ClassName);
                rs.updateString("StartTime", starttime);
                rs.updateString("EndTime", endtime);
                rs.updateString("over", overview);
                rs.updateString("extra", items);
                rs.updateString("MonthPrice", MonthPrice);
                rs.updateString("WeekPrice", WeekPrice);
                rs.updateString("SinglePrice", SinglePrice);
                rs.updateString("photo", "myuploads/" + new_name);
                rs.insertRow();
                return "success";
            }

        } catch (IOException e) {
            e.printStackTrace();
            return "error";
        }
    }

    @PostMapping("/BookClass")
    public void addBook(@RequestParam String bdate, @RequestParam String FIRSTNAME, @RequestParam String EMAIL, @RequestParam String ClassName, @RequestParam String Price,
            @RequestParam String LASTNAME, @RequestParam String PHUN, @RequestParam String zipcode, @RequestParam String message, @RequestParam int Duration, HttpServletResponse response) {
        String EndDate = "";
        if (Duration == 30) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate startDate = LocalDate.parse(bdate, formatter);
            LocalDate endDate = startDate.plusDays(Duration + 2);
            EndDate = endDate.toString();
        } else if (Duration == 7) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate startDate = LocalDate.parse(bdate, formatter);
            LocalDate endDate = startDate.plusDays(Duration);
            EndDate = endDate.toString();
        } else if (Duration == 1) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate startDate = LocalDate.parse(bdate, formatter);
            LocalDate endDate = startDate.plusDays(Duration);
            EndDate = endDate.toString();
        }

        System.out.println("Start Date === " + bdate);
        System.out.println("EndDate===" + EndDate);
        try {
            ResultSet rs = DBLoader.executeQuery("select * from zyth.classbooking");
            rs.moveToInsertRow();
            rs.updateString("Name", FIRSTNAME + " " + LASTNAME);
            rs.updateString("phone", PHUN);
            rs.updateString("Email", EMAIL);
            rs.updateString("Duration", Duration + "");
            rs.updateString("TotalPrice", Price);
            rs.updateString("Additional", message);
            rs.updateString("StartDate", bdate);
            rs.updateString("endDate", EndDate);
            rs.updateString("ClassName", ClassName);
            rs.insertRow();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            response.sendRedirect("Checkout.jsp");
        } catch (IOException ex) {
            Logger.getLogger(ALLController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
  
    @GetMapping("/Checkout")
    public String Checkout(@RequestParam String email) throws IOException
    {
        String checkout = new RDBMStoJSON().generateJSON("select * from zyth.classbooking INNER JOIN zyth.class ON class.ClassName where classbooking.Email=\'"+email+"\'");
        System.out.println(checkout);
        return checkout;
        
    }
            
}
