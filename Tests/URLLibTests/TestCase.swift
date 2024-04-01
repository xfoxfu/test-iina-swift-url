import XCTest
import Foundation
@testable import URLLib

final class TestCase: XCTestCase {
    func testHavingContinentLocaleShouldNotReturnInferredLocation() {
        XCTAssertEqual(
            parseUrl(urlStr: "https://example.com/[foo bar.mkv")?.absoluteString,
            "https://example.com/%5Bfoo%20bar.mkv"
        )
    }
}
