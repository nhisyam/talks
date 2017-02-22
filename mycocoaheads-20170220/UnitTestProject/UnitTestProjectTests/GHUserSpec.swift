import Quick
import Nimble
@testable import UnitTestProject

final class GHUserSpec: QuickSpec {
    override func spec() {
        var user: GHUser!
        describe("when initializing user with empty json") {
            beforeEach {
                user = GHUser(with: "")
            }
            fit("login should be empty") {
                expect(user.login.isEmpty).to(beTrue())
            }
        }
        describe("when initializing user with wrong dictionary content") {
            context("with wrong login key") {
                xit("login should be empty") {
                    user = GHUser(with: ["wrongloginkey" : "hisyam"])
                    expect(user.login.isEmpty).to(beTrue())
                }
            }
        }
    }
}
