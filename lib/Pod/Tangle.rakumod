unit module Pod::Tangle:ver<0.0.1>;

use Pod::Literate;

our sub tangle(IO::Path $file --> Str) is export {
    Pod::Literate.parsefile($file.IO).caps.map({
        when .key eq 'pod'  { '' }
        when .key eq 'code' { ~.value }
    }).join("\n")
}

=begin pod

=head1 NAME

Pod::Tangle - Tangle code from Raku source

=head1 SYNOPSIS

You can use Pod::Tangle as a library:

=begin code :lang<raku>

use Pod::Tangle
tangle($filename.IO);

=end code

You can also use it through it's command line tool

=begin code :lang<sh>
pod-tangle $source.raku > $source-without-pod.raku
=end code
=head1 DESCRIPTION

Pod::Tangle strips all Pod documentation from a Raku source file, leaving it as a
"tangled" file. The goal of doing so is to support basic L<literate
programming|https://en.wikipedia.org/wiki/Literate_programming> in Raku.

For additional details, please see the announcement blog post:
L<www.codesections.com/blog/weaving-raku|https://www.codesections.com/blog/weaving-raku>.

=head1 AUTHOR

codesections <daniel@codesections.com>

=head1 COPYRIGHT AND LICENSE

ⓒ 2020 Daniel Sockwell

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
