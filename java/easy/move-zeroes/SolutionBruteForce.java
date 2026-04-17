
class SolutionBruteForce {
    public void moveZeroes(int[] nums) {

        for (int i=0; i< nums.length; i++) {
            for (int j=i+1; j< nums.length; j++) {

                if (nums[i] == 0 && nums[j] !=0) {
                    swap(i, j, nums);
                }
            }
        }
    }
    private void swap(int a, int b, int[] nums){
        int tmp = nums[a];
        nums[a] = nums[b];
        nums[b] = tmp;
    }
}