//
//  ViewController.swift
//  test-firebase-ios
//
//  Created by Keevan Dance on 6/28/19.
//  Copyright © 2019 Keevan Dance. All rights reserved.
//


import UIKit
import FirebaseUI

class ViewController: UIViewController, FUIAuthDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if Auth.auth().currentUser != nil {
            // do smething!
        } else {
            let authUI = FUIAuth.defaultAuthUI()
            authUI?.delegate = self
            let providers: [FUIAuthProvider] = [
                FUIEmailAuth()
            ]
            authUI?.providers = providers
            let authViewController = authUI!.authViewController()
            self.present(authViewController, animated: true, completion: nil)
        }
    }

}

