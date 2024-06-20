import Foundation

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
/// 
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd1Group(_ regexText: String) -> Regex<(
    Substring // 1
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd2Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring  // 2
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd3Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring, // 2
    Substring  // 3
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd4Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring  // 4
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd5Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring  // 5
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd6Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring, // 5
    Substring  // 6
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")

/// A macro to replace the character classes from [SwiftUtilities](https://github.com/stefanspringer1/SwiftUtilities) in the form `${MY_CHARACTER_CLASS}` in a regular expression text, returning a literal regular expression. (The dollar sign can be escaped using a backslash.) You will get a compiler error if you have chosen a non-existing character class.
///
/// To use this macro, you need to know how many groups are in the regular expression and choose the according macro name. If there are `<n>` groups, you will have to call the macro by `#regexWithCharacterClassesAnd<n>Groups(...)`, e.g `#regexWithCharacterClassesAnd2(...)` if there are two groups (exception: when having one group, you need to call `regexWithCharacterClassesAnd1Group`). Currently, you can call the macro for up to seven groups. You will get a compiler error if you have chosen the wrong macro name.
///
/// Usage (note that the type annotation is not necessary):
///
/// ```swift
/// // note that the type annotation is not necessary:
/// let regex: Regex<Substring> = #regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]")
/// print("123 hello!".replacing(regex, with: "x")) // "123 xxxxx!"
/// ```
@freestanding(expression)
public macro regexWithCharacterClassesAnd7Groups(_ regexText: String) -> Regex<(
    Substring, // 1
    Substring, // 2
    Substring, // 3
    Substring, // 4
    Substring, // 5
    Substring, // 6
    Substring  // 7
)> = #externalMacro(module: "RegexWithCharacterClassesMacros", type: "RegexWithCharacterClasses")
