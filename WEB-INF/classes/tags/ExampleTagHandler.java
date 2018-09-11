package tags;

// Java core packages
import java.io.*;

// Java extension packages
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ExampleTagHandler extends TagSupport {

    // Method called to begin tag processing
    public int doStartTag() throws JspException {
        // attempt tag processing
        try {
            // obtain JspWriter to output content
            JspWriter out = pageContext.getOut();

            // output content
            out.print( "Messaggio proveniente dal tag" );
        } catch( IOException ioException ) {
            // rethrow IOException to JSP container as JspException
            throw new JspException( ioException.getMessage() );
        }
        return SKIP_BODY; // ignore the tag's body (alternativa a EVAL_BODY_INCLUDE)
    }

}
