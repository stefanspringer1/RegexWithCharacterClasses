import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import Foundation
import Utilities

extension String: Error {}

let characterClasses = CharacterClasses()

public struct RegexWithCharacterClasses: ExpressionMacro {
    public static func expansion<Node: FreestandingMacroExpansionSyntax,
                                 Context: MacroExpansionContext>(of node: Node,
                                                                 in context: Context) throws -> ExprSyntax {
        guard
            node.argumentList.count == 1 || node.argumentList.count == 2
        else {
            throw "need one or two arguments"
        }
        
        let argumentList = Array(node.argumentList)
        let regexTextArgument = argumentList[0].expression
        let matchingSemanticsArgument = node.argumentList.count >= 2 ? argumentList[1].expression : nil
        
        guard
            let segments = regexTextArgument.as(StringLiteralExprSyntax.self)?.segments,
            segments.count == 1,
            case .stringSegment(let literalSegment)? = segments.first
        else {
            throw "macro requires static string literal"
        }
        
        var text = literalSegment.content.text
        
        text = try text.replacingCharacterClasses(usingCharacterClasses: characterClasses)
        
        let expr: ExprSyntax
        if let matchingSemanticsArgument {
            expr = "/\(raw: text)/.matchingSemantics(\(raw: matchingSemanticsArgument))"
        } else {
            expr = "/\(raw: text)/"
        }
        return ExprSyntax(expr)

    }
}
