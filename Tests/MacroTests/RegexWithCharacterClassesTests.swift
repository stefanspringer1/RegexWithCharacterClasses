import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import Macros
import RegexWithCharacterClasses

final class RegexWithCharacterClassesTests: XCTestCase {

    func testRegexWithCharacterClasses() throws {
        let regex: Regex<Substring> = #regexWithCharacterClasses("[${LATIN_LETTERS}]")
        XCTAssertEqual(
            "123 hello!".replacing(regex, with: "x"),
            "123 xxxxx!"
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
