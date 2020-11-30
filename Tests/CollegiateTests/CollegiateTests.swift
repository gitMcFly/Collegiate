import XCTest
import unstandard
@testable import CollegeGroup
@testable import Collegiate
@testable import PartialAddress
@testable import StudentNewspaper

final class CollegiateTests: XCTestCase {
    static var allTests = [
        ("testCountryTitle", testCountryTitle),
        ("testCollegesHaveCities", testCollegesHaveCities),
        ("testStudentNewspaperURLFormatting", testStudentNewspaperURLFormatting),
    ]
    
}

extension CollegiateTests {
    func testCountryTitle() {
        let usa = Country.unitedStatesOfAmerica
        XCTAssertEqual(usa.formattedTitle, "United States of America")
        
        let australia = Country.australia
        XCTAssertEqual(australia.formattedTitle, "Australia")
        
    }
    
    func testCollegesHaveCities() {
        AnyCollegeGroup.allCases
            .flatMap(\.body[\.elements])
            .forEach {
                let hasCity = $0[\.address.city] != nil
                let isMissingURL = $0[\.homePage] == nil && $0[\.siteAuthority] == nil
                
                XCTAssert(hasCity || isMissingURL, "\($0[\.title]) must have a city")
            }
        
    }
    
    func testStudentNewspaperURLFormatting() {
        StudentNewspaper.allCases
            .compactMap(\.siteReference)
            .forEach {
                switch $0 {
                case .authority(let authority, _):
                    XCTAssertFalse(authority.hasPrefix("http"), "\(authority) is malformed")
                    
                case .webPage(let pageURL):
                    XCTAssert(pageURL.hasPrefix("http"), "\(pageURL) is malformed")
                    
                }
                
            }
        
    }
    
}
