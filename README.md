# RegexWithCharacterClasses

A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression.

Usage (note that the type annotation is not necessary):

```swift
let regex: Regex<Substring> = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
```
