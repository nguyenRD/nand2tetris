import java.io.IOException;
import java.nio.file.Paths;
import java.util.Scanner;
import java.util.stream.Stream;

public class Reading {

    private final Stream<String> tokens;

    public Reading(String file_name) throws IOException {
        Scanner file = new Scanner(Paths.get(file_name), "ASCII");
        this.tokens = file.tokens();
        System.out.println(this.tokens);
    }

    public static void main(String[] args) throws IOException {
        String file_name = args[0];
        new Reading(file_name);
    }

}
