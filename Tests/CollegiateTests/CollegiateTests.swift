import XCTest
@testable import Collegiate
@testable import PartialAddress

final class CollegiateTests: XCTestCase {
    static var allTests = [
        ("testCountryTitle", testCountryTitle),
    ]
    
}

extension CollegiateTests {
    func testCountryTitle() {
        let usa = Country.unitedStatesOfAmerica
        XCTAssertEqual(usa.formattedTitle, "United States of America")
        
        let australia = Country.australia
        XCTAssertEqual(australia.formattedTitle, "Australia")
        
    }
    
}
