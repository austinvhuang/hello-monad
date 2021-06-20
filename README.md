# Hello Monad: Trivial Monad Examples

*"Just show me how the types line up."*

A repo of the most trivial (~30 LOC) "hello world" examples of commonly used monad classes - Reader, Writer, State, IORef, ST.

Why? A lot of monad introductions have somewhat involved motivating examples (eg logging systems, implementing some complicated tree algorithm). The examples can get in the way of seeing the basic usage.

The biggest barrier for beginners sometimes is just to see how the types line up. Once that's understood, it's easier to follow those more-involved examples.

# Running Examples

These examples require [stack](https://docs.haskellstack.org/en/stable/README/).

Run using

`stack run [x]`

where `[x]` can be `reader`, `writer`, `state`, `ioref`, `st`.

# Contributions

Improvements, contributions, etc. are welcome - submit a pull request.

# Acknowledgements

For a more detailed discussion, see [Haskell In Depth](https://www.manning.com/books/haskell-in-depth?gclid=CjwKCAjwzruGBhBAEiwAUqMR8NkSOFxQuna0gWDbKBEsxQ6y8jz2EpIz4ewaL8f0_VpMbP_o9N_SchoCjr0QAvD_BwE) chapter 5.
