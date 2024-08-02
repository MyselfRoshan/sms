import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;

public class DemoServlet extends HttpServlet {
    // public String getServletInfo() {
    // return null;
    // };

    // public jakarta.servlet.ServletConfig getServletConfig() {
    // return null;
    // };

    // public void init(jakarta.servlet.ServletConfig config) throws
    // jakarta.servlet.ServletException {
    // };

    public void service(jakarta.servlet.ServletRequest req, jakarta.servlet.ServletResponse res)
            throws jakarta.servlet.ServletException, IOException {
        PrintWriter out = res.getWriter();
        out.print("Hello from the demo Servelet");
    };

    // public void destroy() {
    // };
}
