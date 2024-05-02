package com.example.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "bonjour", value = "/bonjour")
public class bonjour extends HttpServlet {
    String[] StudentsName = new String[100];
    String Message;
    int StudentCount;

    public bonjour(){
        StudentCount=0;
        this.StudentsName[StudentCount++]="wajih";
        this.StudentsName[StudentCount++]="Ammar";
        this.StudentsName[StudentCount++]="Fatma";
        this.StudentsName[StudentCount++]="adem";
        Message="StudentList";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setAttribute("Message", this.Message);
        request.setAttribute("StudentsName", StudentsName);
        request.setAttribute("StudentCount", this.StudentCount);
        this.getServletContext().getRequestDispatcher("/bonjour.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Name = req.getParameter("Nom");
        this.StudentsName[StudentCount++]=Name;
        req.setAttribute("Message", this.Message);
        req.setAttribute("StudentsName", this.StudentsName);
        req.setAttribute("StudentCount", this.StudentCount);
        this.getServletContext().getRequestDispatcher("/bonjour.jsp").forward(req, resp);
    }
}
