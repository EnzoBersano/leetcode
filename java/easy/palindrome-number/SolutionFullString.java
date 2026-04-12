
class SolutionFullString {
    public boolean isPalindrome(int x) {

        if (x < 0) {
            return false;
        }

        String xstring = String.valueOf(x);

        for (int i = 0; i < xstring.length() / 2; i++) {

            if (xstring.charAt(i) != xstring.charAt(xstring.length() - i - 1)) {
                return false;
            }
        }
        return true;
    }
}