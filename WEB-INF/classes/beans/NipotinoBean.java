package beans;  //NOTARE CHE IL BEAN VIENE MESSO IN UN PACKAGE

public class NipotinoBean {

    private String name, color;


    public NipotinoBean() {}


    public String getColor() {
        return color;
    }
    public void setColor(String newColor) {
        color=newColor;
    }


    public String getName() {
        return name;
    }
    public void setName(String newName) {
        name=newName;
    }

}