import XCTest
import Testing
import Utilities
import RegexWithCharacterClasses

final class TestRegexForAllClasses: XCTestCase {
    
    func test_CAPITAL_LATIN_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${CAPITAL_LATIN_LETTERS}]"))
    }
    
    func test_SMALL_LATIN_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${SMALL_LATIN_LETTERS}]"))
    }
    
    func test_LATIN_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${LATIN_LETTERS}]"))
    }
    
    func test_COMBINING_ABOVE() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${COMBINING_ABOVE}]"))
    }
    
    func test_COMBINING_BELOW() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${COMBINING_BELOW}]"))
    }
    
    func test_COMBINING_MIDDLE() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${COMBINING_MIDDLE}]"))
    }
    
    func test_COMBINING() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${COMBINING}]"))
    }
    
    func test_CAPITAL_GREEK_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${CAPITAL_GREEK_LETTERS}]"))
    }
    
    func test_SMALL_GREEK_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${SMALL_GREEK_LETTERS}]"))
    }
    
    func test_GREEK_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${GREEK_LETTERS}]"))
    }
    
    // currently no access to "MATHEMATICAL" via ${...}
//    func test_MATHEMATICAL() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${MATHEMATICAL}]"))
//    }
    
    // currently no access to "ROMAN" via ${...}
//    func test_ROMAN() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${ROMAN}]"))
//    }
    
    // currently no access to "ITALIC" via ${...}
//    func test_ITALIC() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${ITALIC}]"))
//    }
    
    // currently no access to "BOLD" via ${...}
//    func test_BOLD() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${BOLD}]"))
//    }
    
    // currently no access to "SCRIPT" via ${...}
//    func test_SCRIPT() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${SCRIPT}]"))
//    }
    
    // currently no access to "GOTHIC" via ${...}
//    func test_GOTHIC() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${GOTHIC}]"))
//    }
    
    // currently no access to "SANSSERIF" via ${...}
//    func test_SANSSERIF() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${SANSSERIF}]"))
//    }
    
    // currently no access to "MONOSPACE" via ${...}
//    func test_MONOSPACE() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${MONOSPACE}]"))
//    }
    
    // currently no access to "DOUBLE_STRUCK" via ${...}
//    func test_DOUBLE_STRUCK() throws {
//        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${DOUBLE_STRUCK}]"))
//    }
    
    func test_DIGIT() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${DIGIT}]"))
    }
    
    func test_LARGE_OPERATORS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${LARGE_OPERATORS}]"))
    }
    
    func test_BINARY_OPERATIONS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${BINARY_OPERATIONS}]"))
    }
    
    func test_RELATIONS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${RELATIONS}]"))
    }
    
    func test_NEGATED_RELATIONS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${NEGATED_RELATIONS}]"))
    }
    
    func test_ARROWS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${ARROWS}]"))
    }
    
    func test_OPENING_DELIMITERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${OPENING_DELIMITERS}]"))
    }
    
    func test_CLOSING_DELIMITERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${CLOSING_DELIMITERS}]"))
    }
    
    func test_PUNCTUATION() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${PUNCTUATION}]"))
    }
    
    func test_LEFT_RIGHT_ARROWS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${LEFT_RIGHT_ARROWS}]"))
    }
    
    func test_CYRILLIC() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${CYRILLIC}]"))
    }
    
    func test_ACCENTED() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${ACCENTED}]"))
    }
    
    func test_TRIVIAL_SPACES() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${TRIVIAL_SPACES}]"))
    }
    
    func test_NONTRIVIAL_SPACES() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${NONTRIVIAL_SPACES}]"))
    }
    
    func test_SPACES() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${SPACES}]"))
    }
    
    func test_POSTFIX_OPERATORS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${POSTFIX_OPERATORS}]"))
    }
    
    func test_LETTERS() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${LETTERS}]"))
    }
    
    func test_ARBORTEXT_SPACE_BUG() throws {
        _ = "abc".contains(#regexWithCharacterClassesAnd1Group("[${ARBORTEXT_SPACE_BUG}]"))
    }
    
}
