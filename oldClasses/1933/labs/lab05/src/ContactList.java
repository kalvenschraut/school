import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;
import java.io.ObjectOutputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.FileInputStream;
import java.io.*;

/**
 * Created by ryan on 2/23/16.
 */
public class ContactList
{

	public static void main(String[] args)
	{
		ContactList list = new ContactList();
		list.add(new Contact("John Doe", 1234567890L, "Address", "Comments"));
		list.add(new NewContact("Bob Doe", 2026123533L, "Bob Address", "Bob Comments", "Bob@gmail.com", "doe", "bob"));
		System.out.println(list.toString());
		System.out.println("---------------------");
		list.write();
		list.read();
		list.sort();
		System.out.println(list.toString());
		System.out.println("--------------------");
		System.out.println(list.addInOrder(new Contact("Cathy doe", 3204503243L, "cathy's address", "cathy comments")));
		System.out.println(list.addInOrder(new Contact("Amy doe", 3204503243L, "cathy's address", "cathy comments")));
		System.out.println("---------------------");
		System.out.println(list.toString());
	}

	int ptr = -1;
	Contact[] contacts;

	public ContactList()
	{
		this(20);
	}

	public ContactList(int num)
	{
		contacts = new Contact[num];
	}

	public boolean addInOrder(Contact c){
		boolean done = false;
		int i = 0;
		while( i < contacts.length){
			if(contacts[i] != null) {
				done = contacts[i].toString().substring(0,2).compareTo(c.toString().substring(0,2)) > 0 ? true : false;
				if (done == true) {
					if (contacts.length - 2 == i) {
						return false;
					}
					for (int j = contacts.length - 1; j >= i; j--) {
						if(j == i){
							contacts[j] = c;
						}else {
							contacts[j] = contacts[j - 1];
						}
					}
					return true;
				}
			}
			i++;
		}
		return false;
	}
	// Using insertion sort
	public void sort()
	{
		if (contacts.length < 2)
			return;

		for (int i = 1; i < contacts.length; i++)
		{
			Contact currContact = contacts[i];
			if (currContact != null)
			{
				String name = currContact.getName();
				int compareIdx = i - 1;
				while (compareIdx >= 0 &&
					  (contacts[compareIdx] == null || contacts[compareIdx].getName().compareTo(name) > 0))
				{
					contacts[compareIdx+1] = contacts[compareIdx];
					compareIdx--;
				}
				contacts[compareIdx+1] = currContact;
			}
		}
	}

	public Contact getCurrent()
	{
		return get(ptr);
	}

	public Contact get(int i)
	{
		if (0 <= i && i < contacts.length)
			return contacts[i];
		return null;
	}

	public Contact previous()
	{
		boolean isEmpty = true;
		for (int i = 0; i < contacts.length; i++)
		{
			if (contacts[i] != null)
				isEmpty = false;
		}

		if (isEmpty)
			return null;

		Contact nextContact = null;
		while (nextContact == null)
		{
			ptr = (ptr + contacts.length - 1) % contacts.length;
			nextContact = contacts[ptr];
		}
		return contacts[ptr];
	}

	public Contact next()
	{
		boolean isEmpty = true;
		for (int i = 0; i < contacts.length; i++)
		{
			if (contacts[i] != null)
				isEmpty = false;
		}

		if (isEmpty)
			return null;

		Contact nextContact = null;
		while (nextContact == null)
		{
			ptr = (ptr + 1) % contacts.length;
			nextContact = contacts[ptr];
		}
		return contacts[ptr];
	}

	public void write()
	{
		/*PrintWriter p = null;

		try
		{
			p = new PrintWriter(new File(fileName));
		}
		catch (Exception e)
		{
			System.err.println(e);
			return false;
		}

		p.print(this.toString());

		p.close();

		return true;
		*/
		ObjectOutputStream o;
		try{
			o = new ObjectOutputStream(new FileOutputStream("data"));
			for(int i = 0; i < contacts.length; i++){
				o.writeObject(get(i));
			}
		}catch(IOException e){
			System.out.println("File write problem to fix");
		}
	}

	public void read()
	{
		/*Scanner s = null;

		try
		{
			s = new Scanner(new File(fileName));
		}
		catch (Exception e)			Contact read1 = (Contact) i.readObject();
		{
			System.err.println(e);
			return false;
		}

		// Clear out old array to avoid mixed data
		contacts = new Contact[contacts.length];

		int index = 0;
		while (s.hasNextLine() && index < contacts.length)
		{
			String contactString = s.nextLine();
			if (!contactString.isEmpty())
			{
				String[] data = contactString.split(",");

				String name = data[0];
				long phone = Long.parseLong(data[1]);
				String addr = data[2];
				String comments = "";

				if (data.length > 3)
					comments = data[3];

				Contact newContact = new Contact(name, phone, addr, comments);
				contacts[index] = newContact;
				index++;
			}
		}

		return true; */
		ObjectInputStream i;
		try {
			i = new ObjectInputStream(new FileInputStream("data"));
			while(true){
				Contact read = (Contact) i.readObject();
				add(read);
			}
		}catch(EOFException e){
			System.out.println("End of File read");
		}catch(IOException e){
			System.out.println("IO problem to fix");
		}catch(ClassNotFoundException e){
			System.out.println("Class does not exist");
		}
	}

	public Contact remove()
	{
		Contact c = contacts[ptr];
		contacts[ptr] = null;
		return c;
	}

	public Contact find(String name)
	{
		int originalPtr = ptr;

		for (int i = 0; i < contacts.length; i++)
		{
			if (contacts[ptr] != null && contacts[ptr].getName().contains(name))
				return contacts[ptr];
			ptr = (ptr + 1) % contacts.length;
		}

		// Not found
		ptr = originalPtr;
		return null;
	}

	public boolean add(Contact c)
	{
		for (int i = 0; i < contacts.length; i++)
		{
			if (contacts[i] == null)
			{
				ptr = i;
				contacts[i] = c;
				return true;
			}
		}

		// No empty spots
		return false;
	}


	public String toString()
	{
		String ret = "";
		for (int i = 0; i < contacts.length; i++)
		{
			if (contacts[i] != null)
				ret += contacts[i].toString();
		}
		return ret;
	}

}
