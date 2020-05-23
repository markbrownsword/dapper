import XCTest

import DapperTests
import DapperCoreTests

var tests = [XCTestCaseEntry]()
tests += DapperTests.allTests()
tests += DapperCoreTests.allTests()

XCTMain(tests)
