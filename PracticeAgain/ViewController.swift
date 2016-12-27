//
//  ViewController.swift
//  PracticeAgain
//
//  Created by nitin on 17/12/16.
//  Copyright © 2016 App Factory Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet weak var popButton: UIButton!
    
    let transition = CircularTransition()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.transitioningDelegate = self
            secondVC.modalPresentationStyle = .custom
            transition.startingPoint = showButton.center
            transition.circleColor = showButton.backgroundColor!
        }
            
        else if let thirdVC = segue.destination as? ThirdViewController {
            thirdVC.popoverPresentationController!.delegate = self
            thirdVC.popoverPresentationController?.sourceView = self.popButton
            thirdVC.popoverPresentationController?.sourceRect = CGRect(x: self.popButton.bounds.midX, y: self.popButton.bounds.minY, width: 0, height: 0)
            thirdVC.preferredContentSize = CGSize(width: 135, height: 135)
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        // This *forces* a popover to be displayed on the iPhone
        return .none
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        return transition
    }
}
