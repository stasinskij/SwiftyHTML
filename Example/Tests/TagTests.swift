import UIKit
import XCTest
import SwiftyHTML

class TagTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldCreateAnchorFactory() {
        let str = TestAttributedStrings.stringWithLinkAttribute
        let factory = TagFactory.factory(attributes: str.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is AnchorFactory, "Expected AnchorFactory, created \(factory.self) instead.")
    }
    
    func testShouldCreateParagraphFactory() {
        let str = TestAttributedStrings.stringWithNoAttributes
        let factory = TagFactory.factory(attributes: str.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is ParagraphFactory, "Expected ParagraphFactory, created \(factory.self) instead.")
    }
    
    func testShouldCreateSpanFactory() {
        let str = TestAttributedStrings.stringWithBlueColorAttribute
        let factory = TagFactory.factory(attributes: str.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is SpanFactory, "Expected SpanFactory, created \(factory.self) instead.")
    }
}
