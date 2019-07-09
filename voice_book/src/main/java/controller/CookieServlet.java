package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/cook")
public class CookieServlet extends HttpServlet {

	private static final long serialVersionUID = 5037253911903725377L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext ctxt =req.getServletContext();
		System.out.println(ctxt);
		resp.setCharacterEncoding("UTF=8");
		resp.setContentType("text/html;charset=UTF-8");
		Cookie c = new Cookie("data", "reba");
		c.setMaxAge(60*60);
		resp.addCookie(c);
	}
}
