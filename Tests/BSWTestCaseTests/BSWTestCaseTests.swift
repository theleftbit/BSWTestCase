import XCTest
@testable import BSWTestCase

final class BSWTestCaseTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BSWTestCase().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
