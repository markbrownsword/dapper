import Foundation

public final class DapperCore {

    enum ValidationError: Error {
        case templateNotFound
    }

    public init() {

    }

    public func run() throws -> String {
        guard let filepath = Bundle.module.path(forResource: "Index", ofType: "dapper") else {
            print("Error finding template!")
            throw ValidationError.templateNotFound
        }

        let contents = try String(contentsOfFile: filepath)
        return contents.replacingOccurrences(of: "{{title}}", with: "Hello world")
    }
}
