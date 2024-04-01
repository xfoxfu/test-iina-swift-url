import XCTest
import Foundation
@testable import URLLib

final class TestCase: XCTestCase {
    func testCanHandleUrlWithPreservedCharacters() {
        XCTAssertEqual(
            parseUrl(urlStr: "https://example.com/[foo bar.mkv")?.absoluteString,
            "https://example.com/%5Bfoo%20bar.mkv"
        )
    }
    func testCanHandleUrlWithPercentages() {
        XCTAssertEqual(
            parseUrl(urlStr: "https://example.com/%foo bar.mkv")?.absoluteString,
            "https://example.com/%25foo%20bar.mkv"
        )
    }
}
