import java.util.*;
public class ContinuousCharacterCount {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        String str = s.nextLine();  
        System.out.println(countContinuousCharacters(str));
    }

    public static int countContinuousCharacters(String str) {
        if (str == null || str.length() == 0) {
            return 0;  
        }

        int count = 0;  
        int currentCount = 1;  

        for (int i = 1; i < str.length(); i++) {
            if (str.charAt(i) == str.charAt(i - 1)) {
                currentCount++;
            } else {
                if (currentCount > 2) {
                    count++;
                }
                currentCount = 1;
            }
        }
        if (currentCount > 2) {
            count++;
        }

        return count;
    }
}
