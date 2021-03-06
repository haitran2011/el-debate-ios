//
//  Created by Jakub Turek on 12.05.2017.
//  Copyright © 2017 EL Passion. All rights reserved.
//

import Swinject
import SwinjectAutoregistration

class AnswerAssembly: Assembly {

    func assemble(container: Container) {
        container.autoregister(InputAlertPresenting.self, initializer: InputAlertPresenter.init)
        container.autoregister(CommentControllerPresenting.self, initializer: CommentControllerPresenter.init)
        container.autoregister(CommentController.self, argument: VoteContext.self, initializer: CommentController.init)
        container.autoregister(AnswerViewController.self, argument: VoteContext.self,
                               initializer: AnswerViewController.init)
    }

}
