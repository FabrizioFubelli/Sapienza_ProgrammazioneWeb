package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class AttributeTagHandler extends TagSupport {
    private String qui = "";
    private String quo = "";
    private String qua = "";

    public int doStartTag() throws JspException {
        // attempt tag processing
        try {
            // obtain JspWriter to output content
            JspWriter out = pageContext.getOut();
            // output content
            out.print( "qui => "+qui+"<br/>" );
            out.print( "quo => "+quo+"<br/>" );
            out.print( "qua => "+qua+"<br/>" );
        } catch (IOException ioException) {
            // rethrow IOException to JSP container as JspException
            throw new JspException(ioException.getMessage());
        }

        return SKIP_BODY;   // ignore the tag's body
    }

    // set qui attribute
    public void setQui( String color ) {
        qui = color;
    }

    // set qui attribute
    public void setQuo( String color ) {
        quo = color;
    }

    // set qui attribute
    public void setQua( String color ) {
        qua = color;
    }
}
