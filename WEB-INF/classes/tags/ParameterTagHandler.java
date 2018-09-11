package tags;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ParameterTagHandler extends TagSupport {

    private String property;

    public void setProperty(String valore) {
        this.property=valore;
    }

    public int doStartTag() throws JspException {
        ServletRequest req = pageContext.getRequest();
        String value = req.getParameter(property);
        try {
            JspWriter jspWriter = pageContext.getOut();
            jspWriter.print(value == null ? "" : value);
        } catch (java.io.IOException ex) {
            throw new JspException(ex.getMessage());
        }
        return SKIP_BODY;
    }
}
