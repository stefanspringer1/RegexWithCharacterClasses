# RegexWithCharacterClasses

A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.)

To use this macro, you need to know how many groups are in the regular expression. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClasses<n>(...)`, e.g `#regexWithCharacterClasses2(...)` if there are two groups. Currently, you can call the macro for up to seven groups.

Usage (note that the type annotation is not necessary):

```swift
// note that the type annotation is not necessary:
let regex: Regex<Substring> = #regexWithCharacterClasses1("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
```
