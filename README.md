# RegexWithCharacterClasses

A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.)

Usage (note that the type annotation is not necessary):

```swift
// note that the type annotation is not necessary:
let regex: any RegexComponent = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
```

If you would like to set the matching semantics to `.unicodeScalar`:

```swift
// note that the type annotation is not necessary:
let regex: any RegexComponent = #regexWithCharacterClasses("[${COMBINING}]", matchingSemantics: .unicodeScalar)
print("a\u{0307}".replacing(regex, with: "x")) // "ax"
)
```
