# Task:

Write a function that will delete items (one at a time) from a dynamic array without leaving gaps in the array.

You should assume that the items to be deleted are chosen at random, and try to do this in a gas efficient manner.

For example imagine your array has 12 items and you need to delete the items at indexes 8, 2 and 7.

The final array will then have items {0,1,3,4,5,6,9,10,11}

# Solution:

Given that the order of the items in the array is irrelevant, we can simply swap the item to be deleted with the last item in the array:

```
 s_numbers[index] = s_numbers[s_numbers.length - 1];
```
and then delete the last item:

```
s_numbers.pop();
```

# Extra Question:

When creating the function selector "uint" will be replaced by "uint256". See the example here from the Docs:

`0xa5643bf2`: the Method ID. 
  
This is derived from the signature 
  
`sam(bytes,bool,uint256[])`. 
  
Note that `uint` is replaced with its canonical representation `uint256`.

Could this be used maliciously in an exploit? If so, how would that be done?

# Answer:

Yes, this could be used in an exploit. If a contract that is being called implements the ```fallback``` function, it could contain malicious code that will be executed when a non existing function with the function selector ```0x84a1723c```, which is calculated as the first four bytes of ```keccak256("sam(bytes,bool,uint[])")```, is called.