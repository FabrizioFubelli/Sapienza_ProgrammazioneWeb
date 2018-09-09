import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class RedirectServlet extends HttpServlet {

    // process "get" request from client
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException
    {
        String location = request.getParameter( "page" );
        if (location != null) {
            switch (location) {
                case "botanica":
                    response.sendRedirect( "https://www.botanica.science" );
                    return;
                case "fabriserver":
                    response.sendRedirect( "https://www.fabriserver.party" );
                    return;
                case "oleificio":
                    response.sendRedirect( "https://www.oleificiotulipano.com" );
                    return;
            }
        }

        // codice che viene eseguito solo se questa servlet non riesce a redirigere
        request.setAttribute("error", location != null ? "Parameter page: \""+location+"\" is not valid" : "Parameter page required");
        request.getRequestDispatcher(response.encodeURL("/jsp/redirect_2.jsp")).forward(request, response);
    }
}
