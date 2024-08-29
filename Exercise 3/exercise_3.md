# 1. What are the advantages and disadvantages of the 256 bit word length in the EVM?

Quote from *Ethereum Design Rationale*:

> 32 byte word size - the alternative is 4 or 8 byte words, as in most other architectures, or unlimited, as in Bitcoin. 4 or 8 byte words are too restrictive to store addresses and big values for crypto computations, and unlimited values are too hard to make a secure gas model around. 32 bytes is ideal because it is just large enough to store 32 byte values common in many crypto implementations, as well as addresses (and provides the ability to pack address and value into a single storage index as an optimization), but not so large as to be extremely inefficient.
> 
# 2. What would happen if the implementation of a precompiled contract varied between Ethereum clients?

If the implementation of a precompiled contract varied between Ethereum clients, the output of a transaction wouldn't be deterministic as it would depend on the client. Given that the block proposer is chosen probabilistically depending on the amount of ETH staked, the outcome of a transaction would be a function of the distribution of the client implementations and amount of ETH staked by the validators. As a result, the network might not reach the consensus.

# 3. Using Remix, write a simple contract that uses a memory variable. Then, using the debugger, step through the function and inspect the memory.