import java.util.ArrayList;
import java.util.List;

class SolutionBruteForce {
    public int[] intersection(int[] nums1, int[] nums2) {

        List<Integer> result = new ArrayList<>();

        for (int i = 0; i < nums1.length; i++) {

            for (int j = 0; j < nums2.length; j++) {

                if (nums1[i] == nums2[j]) {

                    boolean alreadyExists = false;

                    for (int k = 0; k < result.size(); k++) {
                        if (result.get(k) == nums1[i]) {
                            alreadyExists = true;
                            break;
                        }
                    }

                    if (!alreadyExists) {
                        result.add(nums1[i]);
                    }

                    break;
                }
            }
        }

        int[] output = new int[result.size()];
        for (int i = 0; i < result.size(); i++) {
            output[i] = result.get(i);
        }

        return output;
    }
}