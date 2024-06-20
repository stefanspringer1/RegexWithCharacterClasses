import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import RegexWithCharacterClassesMacros
import RegexWithCharacterClasses

final class RegexWithCharacterClassesTests: XCTestCase {

    func testWithoutMatchingSemanticsArgument() throws {
        // note that the type annotation is not necessary:
        let regex: Regex<Substring> = #regexWithCharacterClasses1("[${LATIN_LETTERS}]")
        XCTAssertEqual(
            "123 hello!".replacing(regex, with: "x"),
            "123 xxxxx!"
        )
    }
    
    func testWithMatchingSemanticsArgument1() throws {
        // note that the type annotation is not necessary:
        let regex: Regex<Substring> = #regexWithCharacterClasses1("[${COMBINING}]").matchingSemantics(.graphemeCluster)
        XCTAssertEqual(
            "a\u{0307}".replacing(regex, with: "x"),
            "a\u{0307}"
        )
    }
    
    func testWithMatchingSemanticsArgument2() throws {
        // note that the type annotation is not necessary:
        let regex: Regex<Substring> = #regexWithCharacterClasses1("[${COMBINING}]").matchingSemantics(.unicodeScalar)
        XCTAssertEqual(
            "a\u{0307}".replacing(regex, with: "x"),
            "ax"
        )
    }
    
    func testReplacing() throws {
        // note that the type annotation is not necessary:
        let regex: Regex<(Substring,Substring)> = #regexWithCharacterClasses2("([${LATIN_LETTERS}]+)")
        var text = "hello world"
        text = text.replacing(regex) { match in
            "\(match.output.1) \(match.output.1)"
        }
        XCTAssertEqual(
            text,
            "hello hello world world"
        )
    }
    
}
