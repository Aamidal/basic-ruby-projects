# Caesar Cipher
A basic cipher in Ruby

## Background
>If he had anything confidential to say, he wrote it in cipher, that is, by so changing the order of the letters of the alphabet, that not a word could be made out. If anyone wishes to decipher these, and get at their meaning, he must substitute the fourth letter of the alphabet, namely D, for A, and so with the others. <br><br>
-Suetonius, *The Twelve Caesars*<br>
## Features

The function accepts a string to encode, and a key in the form of an integer, indicating the number of letters to shift the message by, and the direction (1 : a->b, -1 : a->z).

```
caesar_cipher("Stephen Maturin is a spy!", 1)
=> "Tufqifo Nbuvsjo jt b tqz!"

caesar_cipher("Khoor, Zruog!", -3)
=> "Hello, World!"
