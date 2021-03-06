package tags;

// Java core packages
import java.io.*;

// Java extension packages
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ExampleTagHandler extends BodyTagSupport {

    // Method called to begin tag processing
    public int doStartTag() throws JspException {
        // attempt tag processing
        try {
            // obtain JspWriter to output content
            JspWriter out = pageContext.getOut();

            // output content
            out.print("<div style=\"background: red;\" title=\""+"Hi! I'm an Example message provided by '"+this.getClass().getName()+"'\">");
        } catch( IOException ioException ) {
            // rethrow IOException to JSP container as JspException
            throw new JspException( ioException.getMessage() );
        }
        return EVAL_BODY_INCLUDE;
        //return SKIP_BODY;
    }

    public int doEndTag() {
        try {
            JspWriter out = pageContext.getOut();
            out.print("</div>");
        } catch(IOException ioe) {
            System.out.println("Error in HeadingTag: " + ioe);
        }
        return(EVAL_PAGE); // Continue with rest of JSP page
    }

}
