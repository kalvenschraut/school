import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class Planner {

    public static void main(String[] args) throws Exception {
        //Setup code: Read data from houses.txt and create list of houses.
        ArrayList<House> houses = new ArrayList<House>();
        Path p = Paths.get(System.getProperty("user.dir"), "houses.txt");

        Files.readAllLines(p, Charset.defaultCharset());
        Scanner sc = new Scanner(Files.readAllLines(Paths.get("houses.txt", ""), Charset.defaultCharset()).get(0));
        while (sc.hasNextInt()) {
            houses.add(new House(sc.nextInt()));
        }

        Collections.sort(houses);
        System.out.println(houses.size());
        //Create the model of the streets in Triangletown.
        Juncture root = buildTree(houses);
        //For 6 12 25 38 43 57 62 75, this should print 15.
        //For 6 12 25 38 43 57, this should print 12.
        System.out.println("Debug: the number of Nodes in the tree is " + root.count() + ".");

        root.number();
        System.out.println("Verification function says: " + root.verify());

        sc = new Scanner(System.in);
        String line = "";
        do {
            System.out.print("Route to house: ");
            line = sc.nextLine();

            int value = -1;
            try {
                value = Integer.parseInt(line);
            } catch (Exception e) {
            }
            if (value > 0) {
                List<String> path = root.findPath(value);
                System.out.println("\n" + path);
            }
        }
        while (!line.equals(""));

    }

    //STEP 1:
    public static Juncture buildTree(List<House> houses) {
        List<Juncture> junc = new ArrayList<>();
        for(int i = 0; i < houses.size();i+=2){
            if(i == houses.size()-1){
                Juncture jun = new Juncture();
                jun.setLeft(houses.get(i));
                jun.getLeft().setValue(houses.get(i).value);
                junc.add(jun);
            }else {
                Juncture j = new Juncture();
                j.setLeft(houses.get(i));
                j.setRight(houses.get(i + 1));
                j.getLeft().setValue(houses.get(i).value);
                j.getRight().setValue(houses.get(i + 1).value);
                junc.add(j);
            }
        }
        while(junc.size() > 3) {
            for (int i = junc.size()-1; i > -1; i -= 2) {
                if (i == 0) {
                    Juncture jun = new Juncture();
                    jun.setLeft(junc.get(i));
                    junc.remove(i);
                    junc.add(jun);
                } else {
                    Juncture j = new Juncture();
                    j.setLeft(junc.get(i-1));
                    j.setRight(junc.get(i));
                    junc.remove(i);
                    junc.remove(i - 1);
                    junc.add(j);
                }
            }
            if (junc.size() < 3) {
                Juncture j = new Juncture();
                j.setLeft(junc.get(1));
                j.setRight(junc.get(0));
                return j;
            }
        }
        return null;

    }
}
