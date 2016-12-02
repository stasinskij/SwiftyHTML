import UIKit
import XCTest
import SwiftyHTML

class TagTests: XCTestCase {
    
    private let linkString = TestAttributedStrings.stringWithLinkAttribute
    private let blueColorString = TestAttributedStrings.stringWithBlueColorAttribute
    private let noAttributesString = TestAttributedStrings.stringWithNoAttributes
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: - Factories
    
    func testShouldCreateAnchorFactory() {
        let factory = TagFactory.factory(attributes: self.linkString.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is AnchorFactory, "Expected AnchorFactory, created \(factory.self) instead.")
    }
    
    func testShouldCreateParagraphFactory() {
        let factory = TagFactory.factory(attributes: self.noAttributesString.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is ParagraphFactory, "Expected ParagraphFactory, created \(factory.self) instead.")
    }
    
    func testShouldCreateSpanFactory() {
        let factory = TagFactory.factory(attributes: self.blueColorString.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(factory is SpanFactory, "Expected SpanFactory, created \(factory.self) instead.")
    }
    
    // MARK: - Parsers
    
    func testShouldCreateAnchorTag() {
        let tag = AttributtedStringParser().tagWith(string: self.linkString.string,
                                                    range: NSMakeRange(0, self.linkString.length),
                                                    attributes: self.linkString.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(tag is Anchor, "Expected Anchor, created \(tag) instead.")
    }
    
    func testShouldCreateSpanTag() {
        let tag = AttributtedStringParser().tagWith(string: self.blueColorString.string,
                                                    range: NSMakeRange(0, self.blueColorString.length),
                                                    attributes: self.blueColorString.attributes(at: 0, effectiveRange: nil))
        XCTAssertTrue(tag is Span, "Expected Span, created \(tag) instead.")
    }
    
    func testShouldCreateSpanTagAtSpecifiedRange() {
        let strLength = self.noAttributesString.length
        let randLocation = Int(arc4random_uniform(UInt32(strLength)))
        let range = NSMakeRange(randLocation, strLength - randLocation)
        self.noAttributesString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: range)
        let tag = AttributtedStringParser().tagWith(string: self.noAttributesString.string, range: range, attributes: self.noAttributesString.attributes(at: randLocation, effectiveRange: nil))
        XCTAssertNotNil(tag, "Expected Span tag at range \(range), got nil instead")
        XCTAssertEqual(range.location, tag?.range.location)
        XCTAssertEqual(range.length, tag?.range.length)
    }
}
