import java.util.HashSet;

public class DifferenceBetweenDuplicates {
    public static void main(String[] args) {
        int[] A = {1, 2, 3, 4, 2, 5, 6, 1};  // Example array input
        System.out.println(findDifferenceBetweenDuplicates(A));
    }

    public static int findDifferenceBetweenDuplicates(int[] A) {
        HashSet<Integer> seen = new HashSet<>();
        Integer firstDuplicate = null;
        Integer lastDuplicate = null;

        for (int i = 0; i < A.length; i++) {
            if (seen.contains(A[i])) {
                if (firstDuplicate == null) {
                    firstDuplicate = A[i];
                }
                lastDuplicate = A[i];
            } else {
                seen.add(A[i]);
            }
        }

        if (firstDuplicate == null || lastDuplicate == null) {
            return 0;
        } else {
            return Math.abs(firstDuplicate - lastDuplicate);
        }
    }
}
