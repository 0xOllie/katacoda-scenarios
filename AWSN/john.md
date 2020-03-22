###  Created by Oliver Collins for you

##  Introduction

What are hashes? Who is John the Ripper? Why are you asking me all these questions?!?!

  

A one way hashing algorithm transforms an input string into a deterministic output of fixed length which cannot be reversed to get the original text.

This property is incredibly useful for checking passwords as it turns out - I need to know that *this password* matches *your password* without knowing what *your password* is. **Lets show with an example below.**

  

Assume I have invented an algorithm called Ollie-10 a special hashing algorithm that only has 10 values, 0-9. For any given input it will produce an output that maps to one of these 10 values.

We invoke Ollie-10 like so:

  

o10 -input "My name is Oliver"

> 7

  

Lets try that again for another value

  

o10 -input "My name is Jess"

> 2

Okay - here's the big question, for the value **5** what is the input string?

...

**CORRECT**, we cannot possibly know! But for every input of "My name is Jess" we always get 2.

  

So, to check your password I just need to use Ollie-10 to hash your answer and compare it to the hash of your password, if its a match then I let you in.

  

**John the Ripper** is a program developed to break password hashes and retrieve the original answer - *How is that possible?* I hear you ask. Well using our example above if I wanted to find out what the value of **5** is equal to I could try and enter every possible combination until the value of **5** appeared.

  

On a basic level, that's what **John the Ripper** does.

  

Actual hashing algorithms use much larger outputs than 0-9 so cracking them is significantly harder than guessing a few random names. This challenge will teach you the basics of cracking a password.

  

##  Using John
This Katacoda course will randomly pick a password from a list and generate a hash for you - it is your job to use the tools installed to crack this password. Because the hash is randomly generated we don't have way to check the answer - good luck.

  Lets load our wordlist  

    john --format=Raw-Md5 hash.txt --wordlist wordlist.txt
    
Okay lets see that password

    john --format=raw-md5 hash.txt --show