
class SolutionBruteForce {
    public int maxSubArray(int[] nums) {
        int maxSum = nums[0];

        for (int i = 0; i < nums.length; i++) {
            int currentSum = 0;

            for (int j = i; j < nums.length; j++) {
                currentSum = currentSum + nums[j];
                maxSum = Math.max(maxSum, currentSum);
            }
        }

        return maxSum;
    }
}