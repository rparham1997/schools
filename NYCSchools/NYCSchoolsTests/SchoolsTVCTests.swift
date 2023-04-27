
import XCTest
@testable import NYCSchools

class SchoolsTVCTests: XCTestCase {
    
    var vc: SchoolsTVC?
    
    // called before EVERY unit test starts
    override func setUp() {
                                                           // create a new
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SchoolsTVC") as? SchoolsTVC {
           vc = viewController
            
            vc?.loadView()
        } else {
            XCTFail()
        }
    }
    // called after every unit test ended
    override func tearDown() {
        vc = nil
    }
    
    func testprepareUI() {
        vc?.viewDidLoad()
        XCTAssertNotNil(vc?.tableView)
    }

   

}
