# A4-anagrams
Arguments to the program: 
A file that is a list of words, one word per line, case insensitive.  The file constitutes the dictionary that you will use for processing.  The name of the file will be passed as the first parameter.  The file should be a simple text file.
The word whose anagrams you are trying to find is the second parameter passed.  It is also case insensitive.
Both parameters will be passed as strings 

Processing:  
Read in the list of words in the file and use this as your dictionary (take that as an English word).  
Find all words in the dictionary that are anagrams (an anagram is a rearrangement of the letters of a word) of the given word.  The determination of anagrams is to be case insensitive (that is “TOPS” is an anagram of “stop”.
Output to the terminal by printing (not returning a value) The text “The anagrams of “, the word, “ are “, and the list of all anagrams as a Haskell list, with the capitalization of the original list (that is, if it is “Cat” in the original file, it should be “Cat” in the output list.   (A word is an anagram of itself,)  If there are no anagrams, you should display the empty list.


Sample input and output:
Dictionary: 
Cat
Act
cats
dog
GOD
Pots
SPOT
tops
teem
Meet

Assuming that the file is dict.txt in the current directory:
Invocation				Output:
./assign4 dict.txt Tac	The anagrams of Tac are ["Cat","Act"]
./assign4 dict.txt STOP	The anagrams of STOP are ["Pots","SPOT","tops"]
./assign4 dict.txt mete	The anagrams of mete are ["teem",”Meet”]
./assign4 dict.txt GOD	The anagrams of GOD are [“dog”,"GOD"]
./assign4 dict.txt tar	The anagrams of tar are []

