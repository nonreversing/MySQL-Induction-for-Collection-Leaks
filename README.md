# MySQL-Induction-for-Collection-Leaks

This is a simple MySQL script to import the Collection 1-5 leaks, specifically the magnet link containing the files as highly compressed .zst files.

I do not suggest using this script with the AntiPublic #1 files due to their size and some issues with \r\n found in line termination that cause error. Further, due to the way in which these passwords were collected, some AntiPublic #1 contained ':' within the passwords which conflicts with the delimiter of the leak in a nasty way. 

None of the coding here is very complex, but if you're interested in the leaks and don't feel like learning SQL, I hope this is useful.
