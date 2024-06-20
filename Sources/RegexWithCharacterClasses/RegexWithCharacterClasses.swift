import Foundation

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.)
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// let regex: Regex<Substring> = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
///
/// If you would like to set the matching semantics to `.unicodeScalar`:
///
/// ```swift
/// let regex: any RegexComponent = #regexWithCharacterClasses("[${COMBINING}]", matchingSemantics: .unicodeScalar)
/// print("a\u{0307}".replacing(regex, with: "x")) // "ax"
/// )
/// ```
@freestanding(expression)
public macro regexWithCharacterClasses(_ regexText: String, matchingSemantics semanticLevel: RegexSemanticLevel = .unicodeScalar) -> any RegexComponent = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")
