//
//  Coordinator+SplitView.swift
//  XCoordinator
//
//  Created by Paul Kraft on 30.07.18.
//  Copyright © 2018 QuickBird Studios. All rights reserved.
//

extension TransitionPerformer where TransitionType.RootViewController: UISplitViewController {
    // TODO: Add animations
    func show(_ viewController: UIViewController, with options: TransitionOptions, completion: PresentationHandler?) {

        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)

        rootViewController.show(viewController, sender: nil)

        CATransaction.commit()
    }

    // TODO: Add animations
    func showDetail(_ viewController: UIViewController,
                    with options: TransitionOptions, completion: PresentationHandler?) {

        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)

        rootViewController.showDetailViewController(viewController, sender: nil)

        CATransaction.commit()
    }
}
