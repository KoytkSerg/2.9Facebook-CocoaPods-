//
//  ViewController.swift
//  2.9Facebook(CocoaPods)
//
//  Created by Sergii Kotyk on 14/12/21.
//

import UIKit
import FacebookShare
import FacebookLogin

class ViewController: UIViewController {
    @IBOutlet weak var testView: UIView!
    
    @IBAction func shareButton(_ sender: Any) {
        guard let url = URL(string: "https://newsroom.fb.com/") else {
            preconditionFailure("URL is invalid")
        }
        
        let content = ShareLinkContent()
        content.contentURL = url
        content.hashtag = Hashtag("#bestSharingSampleEver")

        dialog(withContent: content).show()
    }
    
    func dialog(withContent content: SharingContent) -> ShareDialog {
        return ShareDialog(
            fromViewController: self,
            content: content,
            delegate: self
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBLoginButton()
        loginButton.center = testView.center
        view.addSubview(loginButton)
        
    }


}


