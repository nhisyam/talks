import Quick
import Nimble
@testable import UnitTestProject

public let kURLErrorCannotFindHost = -1003

//final class GHUserServiceSpec: QuickSpec {
//    override func spec() {
//        var session: MockSession!
//        var service: GHUserService!
//        beforeEach {
//            session = MockSession()
//            service = GHUserService("foo", session: session)
//        }
//        describe("when session encounters error") {
//            context("error is not nil") {
//                it("should return nil user") {
//                    session.mockError = NSError(domain: "foo", code: kURLErrorCannotFindHost, userInfo: nil)
//                    waitUntil { done in
//                        service.perform { user in
//                            expect(user).to(beNil())
//                            done()
//                        }
//                    }
//
//                }
//            }
//        }
//
//    }
//}
//
//class MockSession: Session {
//    var mockResponse: URLResponse? = nil
//    var mockError: Error? = nil
//    var mockData: Data? = nil
//
//    func dataTask(with url: URL, completionHandler: @escaping (Data?,   URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTask {
//        let task = URLSession.shared.dataTask(with: url, completionHandler: completionHandler)
//        completionHandler(mockData, mockResponse, mockError)
//        return task
//    }
//}
