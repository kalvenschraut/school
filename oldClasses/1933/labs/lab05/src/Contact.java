import java.io.Serializable;
/**
 * Created by ryan on 2/23/16.
 */
public class Contact implements Serializable
{

	public static void main(String[] args)
	{
		Contact c1a = new Contact("John Doe", 1235551234);
		Contact c1b = new Contact("John Doe", 1235551234);
		Contact c2 = new Contact("John Deer", "1234 Some road");
		Contact c3 = new Contact("Jane Doe", 1235551234, "An address", "Commenting");
		System.out.println(c1a.toString());
		System.out.println("---------------");
		System.out.println(c1b.toString());
		System.out.println("---------------");
		System.out.println(c2.toString());
		System.out.println("---------------");
		System.out.println(c3.toString());
		System.out.println("---------------");
		System.out.println("True? " + c1a.equals(c1b));
		System.out.println("---------------");
		System.out.println("False? " + c2.equals(c1b));
	}

	private String name;
	private long phone;
	private String address;
	private String comments;

	public Contact(String name, long phone, String address, String comments)
	{
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.comments = comments;
	}

	public Contact(String name, long phone)
	{
		this(name, phone, "", "");
	}

	public Contact(String name, String address)
	{
		this(name, -1, address, "");
	}

	public boolean equals(Contact c)
	{
		boolean isEqual = true;

		isEqual &= name.equals(c.getName());
		isEqual &= phone == c.getPhone();
		isEqual &= address.equals(c.getAddress());
		isEqual &= comments.equals(c.getComments());

		return isEqual;
	}

	public String toString()
	{
		String ret = "";
		ret += name + ",";
		ret += phone + ",";
		ret += address + ",";
		ret += comments + "\n";
		return ret;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public long getPhone()
	{
		return phone;
	}

	public void setPhone(long phone)
	{
		this.phone = phone;
	}

	public String getAddress()
	{
		return address;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

	public String getComments()
	{
		return comments;
	}

	public void setComments(String comments)
	{
		this.comments = comments;
	}

}
