import java.io.Serializable;
/**
 * Created by schra447 on 3/8/16.
 */
public class NewContact extends Contact{
    public static void main(String[] args) {
        NewContact c1 = new NewContact("Bob Doe", 2026123533L, "Bob Address", "Bob Comments", "Bob@gmail.com", "doe", "bob");
        NewContact c2 = new NewContact("Bobjr Doe", 2026123533L, "Bobjr Address", "Bobjr Comments", "Bob@gmail.com", "doe", "bob");
        NewContact c3 = new NewContact("jane Doe", 2026123533L, "jane Address", "jane Comments", "jane@gmail.com", "doe", "jane");
        System.out.println(c1.toString());
        System.out.println(c1.equals(c2));
        System.out.println(c1.equals(c3));
    }
    private String email = "";
    private String group = "";
    private String quickRef = "";
    public NewContact(String name, long phone, String address, String comments,
                      String email, String group, String quickRef){
        super(name,phone,address,comments);
        this.email = email;
        this.group = group;
        this.quickRef = quickRef;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
    public void setGroup(String group){
        this.group = group;
    }
    public String getGroup(){
        return group;
    }
    public void setQuickRef(String quickRef){
        this.quickRef = quickRef;
    }
    public String getQuickRef(){
        return quickRef;
    }
    public String toString(){
            String ret = "";
            ret += super.getName() + ",";
            ret += super.getPhone() + ",";
            ret += super.getAddress() + ",";
            ret += super.getComments() + ",";
            ret += email + ",";
            ret += group + ",";
            ret += quickRef + "\n";
        return  ret;
    }
    public boolean equals(NewContact c){
        boolean isEqual = true;
        isEqual &= email.equals(c.getEmail());
        isEqual &= group.equals(c.getGroup());
        isEqual &= quickRef.equals(c.getQuickRef());
        return isEqual;
    }
}
