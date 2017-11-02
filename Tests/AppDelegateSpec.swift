@testable import CCNumberValidator
import Nimble
import Quick

class AppDelegateSpec: QuickSpec {

    override func spec() {
        var appDelegate: AppDelegate!

        describe("AppDelegate") {
            beforeEach {
                appDelegate = AppDelegate()
            }

            describe("starting application") {
                var launchReturnValue: Bool!

                beforeEach {
                    launchReturnValue = appDelegate.application(.shared, didFinishLaunchingWithOptions: nil)
                }

                it("should set window") {
                    expect(appDelegate.window).toNot(beNil())
                }

                it("should return true") {
                    expect(launchReturnValue).to(beTrue())
                }
            }
        }
    }

}
