NAME
====

Pod::Tangle - Tangle code from Raku source

SYNOPSIS
========

You can use Pod::Tangle as a library:

```raku
use Pod::Tangle
tangle($filename.IO);
```

You can also use it through it's command line tool

```sh
pod-tangle $source.raku > $source-without-pod.raku
```

DESCRIPTION
===========

Pod::Tangle strips all Pod documentation from a Raku source file, leaving it as a "tangled" file. The goal of doing so is to support basic [literate programming](https://en.wikipedia.org/wiki/Literate_programming) in Raku.

For additional details, please see the announcement blog post: [www.codesections.com/blog/weaving-raku](https://www.codesections.com/blog/weaving-raku).

AUTHOR
======

codesections <daniel@codesections.com>

COPYRIGHT AND LICENSE
=====================

ⓒ 2020 Daniel Sockwell

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

