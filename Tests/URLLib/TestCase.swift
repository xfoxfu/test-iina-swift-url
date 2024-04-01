import XCTest
import Foundation
@testable import URLLib

final class TestCase: XCTestCase {
    func testHavingContinentLocaleShouldNotReturnInferredLocation() {
        XCTAssertEqual(parseUrl("https://example.com/[foo bar.mkv"), URL(string: "https://example.com/%5Bfoo%20bar.mkv", encodingInvalidCharacters:false))
    }
}
