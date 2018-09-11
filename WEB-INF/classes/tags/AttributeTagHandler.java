package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class AttributeTagHandler extends TagSupport {

    public int doStartTag() throws JspException {
        return SKIP_BODY;
    }
}
