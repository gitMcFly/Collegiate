import XCTest
import unstandard
@testable import CollegeGroup
@testable import Collegiate
@testable import PartialAddress

final class CollegiateTests: XCTestCase {
    static var allTests = [
        ("testCountryTitle", testCountryTitle),
        ("testCollegesHaveCities", testCollegesHaveCities),
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
    
}
