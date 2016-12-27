//
//  ThirdViewController.swift
//  PracticeAgain
//
//  Created by nitin on 26/12/16.
//  Copyright © 2016 App Factory Inc. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.popoverPresentationController?.presentedView?.transform = CGAffineTransform(scaleX: 1, y: 0.5)
        self.popoverPresentationController?.backgroundColor = UIColor.init(red: 255, green: 204, blue: 102, alpha: 0)
        
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
            self.popoverPresentationController?.presentedView?.transform = CGAffineTransform.identity
            self.popoverPresentationController?.backgroundColor = UIColor.init(red: 255, green: 204, blue: 102, alpha: 1)
            }, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
            self.popoverPresentationController?.presentedView?.transform = CGAffineTransform(scaleX: 1, y: 0.8)
            }, completion: nil)
    }
    
    @IBAction func dismissButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
