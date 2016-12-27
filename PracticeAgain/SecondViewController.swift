//
//  SecondViewController.swift
//  PracticeAgain
//
//  Created by nitin on 17/12/16.
//  Copyright © 2016 App Factory Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var dismissButton: UIButton!

    @IBAction func dismissView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
