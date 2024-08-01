import java.io.IOException;

import jakarta.servlet.Servlet;

public class DemoServlet implements Servlet {
    public void init(jakarta.servlet.ServletConfig config) throws jakarta.servlet.ServletException {
    };

    public jakarta.servlet.ServletConfig getServletConfig() {
    };

    @Override
    public void service(jakarta.servlet.ServletRequest req, jakarta.servlet.ServletResponse res)
            throws jakarta.servlet.ServletException, IOException {

        out.print("Hello from mysdfsdfs servelet");
    };

    public void destroy() {
    };
}
