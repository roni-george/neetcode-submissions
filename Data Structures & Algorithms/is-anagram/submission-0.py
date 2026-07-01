class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        
        count = {} #dictionary for checking 

        for i in range(len(s)):
            count[s[i]] = count.get(s[i],0) + 1 # increment character from s
            count[t[i]] = count.get(t[i],0) - 1 # decrement character from t

        #checking if everything is balanced
        for val in count.values():
            if val != 0:
                return False
        
        return True