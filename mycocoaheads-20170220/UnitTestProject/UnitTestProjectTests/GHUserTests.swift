import XCTest
@testable import UnitTestProject

class GHUserTestsWithEmptyJSON: XCTestCase {
    var user: GHUser!
    override func setUp() {
        super.setUp()
        user = GHUser(with: "")
    }
    
    override func tearDown() {
        user = nil
        super.tearDown()
    }
    
    func testLoginShouldBeEmpty() {
        XCTAssertEqual(user.login, "")
    }

    func testIdShouldBeZero() {
        XCTAssertEqual(user.id, 0)
    }

    func testAvatarUrlShouldBeEmpty() {
        XCTAssertEqual(user.avatarUrl, "")
    }
}

class GHUserTestsValidJSON: XCTestCase {
    var user: GHUser!
    override func setUp() {
        super.setUp()
        user = GHUser(with: [
                "login": "foo",
                "id": 123,
                "avatar_url": "bar"
            ])
    }

    override func tearDown() {
        user = nil
        super.tearDown()
    }

    func testLoginShouldBeValid() {
        XCTAssertEqual(user.login, "foo")
    }

    func testIdShouldBeValid() {
        XCTAssertEqual(user.id, 123)
    }

    func testAvatarUrlShouldBeValid() {
        XCTAssertEqual(user.avatarUrl, "bar")
    }
}

class GHUserTestsInvalidJSON: XCTestCase {
    var user: GHUser!
    override func setUp() {
        super.setUp()
        user = GHUser(with: [
            "login1": "foo",
            "id": 123,
            "avatar_url": "bar"
            ])
    }

    override func tearDown() {
        user = nil
        super.tearDown()
    }

    func testLoginShouldBeInvalid() {
        XCTAssertEqual(user.login, "")
    }

//    func testIdShouldBeValid() {
//        XCTAssertEqual(user.id, 123)
//    }
//
//    func testAvatarUrlShouldBeValid() {
//        XCTAssertEqual(user.avatarUrl, "bar")
//    }
}
