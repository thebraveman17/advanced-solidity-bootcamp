# Look at the example of init code in today's notes

See [gist](https://gist.github.com/extropyCoder/4243c0f90e6a6e97006a31f5b9265b94).

When we do the ```CODECOPY operation```, what are we overwriting ?

The ```CODECOPY``` operation requires three arguments on the stack: ```destOffset```; which is byte offset in memory where the result will be copied; ```offset```, which is the byte offset in the code to copy from; and ```size```, which is the byte size to copy. At the time of execution of the ```CODECOPY``` opcode, the top three items on the stack are ```destOffset = 0x0000000000000000000000000000000000000000000000000000000000000000``` (0 in decimal), ```offset = 0x0000000000000000000000000000000000000000000000000000000000000021``` (33 in decimal), and ```size = 0x00000000000000000000000000000000000000000000000000000000000000af``` (175 in decimal). This means that the code from position 33 to the position 208 (33 + 175) will be copied to position 0 in memory.

# Can you trigger a revert in the init code in Remix?

A revert in the init code can be triggered by sending Ether to the contract during deployment. Since the constructor of the contract is not marked as ```payable```, the deployment will fail.

# Write some Yul to:
- Add 0x07 to 0x08.
- Store the result at the next free memory location.

The code is in the ```Yul.sol``` contract.

- (optional) Write this again in opcodes:

PUSH1 0X07 - Push 7 on the stack.
PUSH1 0X08 - Push 8 on the stack.
ADD - Add the top two items on the stack.
PUSH1 0X40 - Push the pointer to the free memory address on the stack.
MLOAD - Load the free memory address on the stack.
MSTORE - Save the second item on the stack (sum) to the address defined by the first item of the stack (free memory pointer).