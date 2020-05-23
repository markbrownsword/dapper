import Foundation
import XCTest
import DapperCore

final class DapperCoreTests: XCTestCase {
    func testRun() throws {
        let dapperCore = DapperCore()

        let result = try dapperCore.run()
        XCTAssertEqual("Hello world", result)
    }

    static var tests = [
        ("testRun", testRun),
    ]
}
