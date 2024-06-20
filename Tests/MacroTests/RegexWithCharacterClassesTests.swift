import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import RegexWithCharacterClassesMacros
import RegexWithCharacterClasses

final class RegexWithCharacterClassesTests: XCTestCase {

    func testWithoutMatchingSemanticsArgument() throws {
        let regex: any RegexComponent = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
        XCTAssertEqual(
            "123 hello!".replacing(regex, with: "x"),
            "123 xxxxx!"
        )
    }
    
    func testWithMatchingSemanticsArgument1() throws {
        let regex: any RegexComponent = #regexWithCharacterClasses("[${COMBINING}]", matchingSemantics: .graphemeCluster)
        XCTAssertEqual(
            "a\u{0307}".replacing(regex, with: "x"),
            "a\u{0307}"
        )
    }
    
    func testWithMatchingSemanticsArgument2() throws {
        let regex: any RegexComponent = #regexWithCharacterClasses("[${COMBINING}]", matchingSemantics: .unicodeScalar)
        XCTAssertEqual(
            "a\u{0307}".replacing(regex, with: "x"),
            "ax"
        )
    }
    
//    let testMacros: [String: Macro.Type] = [
//        "regexWithCharacterClasses": RegexWithCharacterClasses.self,
//    ]
//
//    func testRegexWithCharacterClassesMacro() {
//        assertMacroExpansion(
//            """
//            [${LATIN_LETTERS}]
//            """,
//            expandedSource:
//            """
//            /[a-zA-Z]/
//            """,
//            macros: testMacros
//        )
//    }
    
}
