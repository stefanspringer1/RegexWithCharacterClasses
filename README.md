# RegexWithCharacterClasses

A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` or the usual character entities the same form `${MY_CHARACTER_ENTITY}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class or entity name.

To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.

Usage (note that the type annotation is not necessary):

```swift
// note that the type annotation is not necessary:
let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
```
