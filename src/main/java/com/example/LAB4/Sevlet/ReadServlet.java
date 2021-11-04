package com.example.LAB4.Sevlet;

import com.example.LAB4.DBPackage.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(value = "/read")
public class ReadServlet  extends HttpServlet {
    @Override
            protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO userDAO = UserDAO.GetInstance();

        String DataToSend = null;

        try{
            DataToSend = userDAO.ReadAllUsers();
        }
        catch(SQLException throwables){
            throwables.printStackTrace();
        }
        resp.getWriter().print(DataToSend);

        resp.flushBuffer();
    }


}
