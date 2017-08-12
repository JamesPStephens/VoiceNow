//
//  CreateAccount.swift
//  VoiceNow
//
//  Created by James Stephens on 12/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

class CreateAccount: UIViewController {
    
    let backgroundImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "VNBackgroundImage")
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.contentMode = .scaleAspectFit
        bg.addBlurEffect()
        return bg
    }()
    let vnTitle: UILabel = {
        let title = UILabel()
        title.text = "Account"
        title.textColor = UIColor.white
        title.backgroundColor = UIColor.clear
        title.textAlignment = .center
        title.font = UIFont(name: "Roboto-Thin", size: 50)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let vnbackToLogin: UIButton = {
        let login = UIButton()
        login.setTitle("Already have an account? Tap here to login.", for: .normal)
        login.setTitleColor(UIColor.white, for: .normal)
        login.backgroundColor = UIColor.clear
        login.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 16)
        login.titleLabel!.lineBreakMode = .byWordWrapping
        login.titleLabel!.textAlignment = .center
        login.translatesAutoresizingMaskIntoConstraints = false
        login.addTarget(self, action: #selector(loginAccountPresent), for: .touchUpInside)
        return login
    }()
    
    func loginAccountPresent() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionReveal
        view.window!.layer.add(transition, forKey: kCATransition)
        present(Login(), animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        view.addSubview(backgroundImage)
        view.addSubview(vnTitle)
        view.addSubview(vnbackToLogin)
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true

        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        vnbackToLogin.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnbackToLogin.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vnbackToLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnbackToLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        
    

    }
    
}
