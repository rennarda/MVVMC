import XCTest
@testable import MVVMC

final class MVVMCTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MVVMC().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
