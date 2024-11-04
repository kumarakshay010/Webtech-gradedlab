// CookieExpirationServlet.java
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/cookieTest")
public class CookieExpirationServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        // Check if the cookie exists
        Cookie[] cookies = request.getCookies();
        boolean cookieFound = false;
        
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("tempCookie")) {
                    cookieFound = true;
                    break;
                }
            }
        }
        
        if (!cookieFound) {
            // Create a new cookie that expires in 1 minute
            Cookie tempCookie = new Cookie("tempCookie", "testValue");
            tempCookie.setMaxAge(60); // 60 seconds = 1 minute
            response.addCookie(tempCookie);
            
            out.println("<html><body>");
            out.println("<h2>Cookie Status</h2>");
            out.println("<p>New cookie has been created! It will expire in 1 minute.</p>");
            out.println("<p>Refresh the page to check the cookie status.</p>");
            out.println("</body></html>");
        } else {
            out.println("<html><body>");
            out.println("<h2>Cookie Status</h2>");
            out.println("<p>Cookie is still present!</p>");
            out.println("<p>Wait for 1 minute and refresh to see it expire.</p>");
            out.println("</body></html>");
        }
    }
}
