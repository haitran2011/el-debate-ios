//
//  Created by Jakub Turek on 12.05.2017.
//  Copyright © 2017 EL Passion. All rights reserved.
//

@testable import ELDebate
import Nimble
import Quick

class ControllerConfiguratorSpec: QuickSpec {

    override func spec() {
        var routerMock: RouterMock!
        var sut: ControllerConfigurator!

        describe("ControllerConfigurator") {
            beforeEach {
                routerMock = RouterMock()
                sut = ControllerConfigurator()
            }

            describe("configure method") {
                context("when configuring pin controller") {
                    it("should navigate to answer passing debate") {
                        var passedVoteContext: VoteContext?
                        let pinControllerProvider = PinEntryControllerMockProvider()

                        sut.configure(controller: pinControllerProvider, with: routerMock)
                        pinControllerProvider.onVoteContextLoaded?(VoteContext.testDefault)

                        if case let .some(.answer(voteContext)) = routerMock.lastRoute {
                            passedVoteContext = voteContext
                        }

                        expect(passedVoteContext).toNot(beNil())
                        expect(passedVoteContext?.debate.topic).to(equal("test_debate_topic"))
                    }
                }
            }
        }
    }
}
