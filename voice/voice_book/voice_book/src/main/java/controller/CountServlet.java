package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/count")
public class CountServlet extends HttpServlet{
	
	
	private static final long serialVersionUID = 2845566409606085864L;
	private static int  total=0;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext ctxt =request.getServletContext();
		System.out.println(ctxt);
		//1.如果有session就直接返回，如果没有就创建一个新的session
		HttpSession s = request.getSession();
		
		if(s.getAttribute("current") == null){
			total++;
			s.setAttribute("current", total);
		}
		PrintWriter pw = response.getWriter();
		pw.write("<h2 align='center'>Access Website </h2>");
		pw.write("<hr color='red'>");
		pw.write("<p align='center'>you are the"+s.getAttribute("current")+"user. </p>");
		
		
		
	}
}
