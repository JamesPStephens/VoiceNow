//
//  Login.swift
//  VoiceNow
//
//  Created by James Stephens on 12/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import UIKit
import NVActivityIndicatorView


class Login: UIViewController {
    
    private var activityView: NVActivityIndicatorView!
    
    
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
        title.text = "VoiceNow"
        title.textColor = UIColor.white
        title.backgroundColor = UIColor.clear
        title.textAlignment = .center
        title.font = UIFont(name: "Roboto-Thin", size: 50)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let vnWelcome: UILabel = {
        let welcome = UILabel()
        welcome.text = "Hello,\nWelcome back."
        welcome.lineBreakMode = .byWordWrapping
        welcome.numberOfLines = 2
        welcome.textColor = UIColor.white
        welcome.alpha = 0
        welcome.textAlignment = .center
        welcome.font = UIFont(name: "Roboto-Thin", size: 22)
        welcome.translatesAutoresizingMaskIntoConstraints = false
        return welcome
    }()
    let vnEmail: UITextField = {
        let email = UITextField()
        email.textAlignment = .center
        email.textColor = UIColor.white
        email.font = UIFont(name: "RobotoCondensed-Light", size: 14)
        email.attributedPlaceholder = NSAttributedString(string: "Email address", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        email.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        email.layer.cornerRadius = 20
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    let vnPassword: UITextField = {
        let password = UITextField()
        password.textAlignment = .center
        password.textColor = UIColor.white
        password.font = UIFont(name: "RobotoCondensed-Light", size: 14)
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        password.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        password.layer.cornerRadius = 20
        password.translatesAutoresizingMaskIntoConstraints = false
        password.isSecureTextEntry = true
        return password
    }()
    let vnSubmit: UIButton = {
        let title = UIButton()
        title.setTitle("Submit", for: .normal)
        title.backgroundColor = UIColor.clear
        title.setTitleColor(UIColor.white, for: .normal)
        title.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 40)
        title.titleLabel!.lineBreakMode = .byWordWrapping
        title.titleLabel!.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let vnCreateAccount: UIButton = {
        let account = UIButton()
        account.setTitle("Don't have an account. Tap here to create one.", for: .normal)
        account.setTitleColor(UIColor.white, for: .normal)
        account.backgroundColor = UIColor.clear
        account.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 16)
        account.titleLabel!.lineBreakMode = .byWordWrapping
        account.titleLabel!.textAlignment = .center
        account.translatesAutoresizingMaskIntoConstraints = false
        account.addTarget(self, action: #selector(createAccountPresent), for: .touchUpInside)
        return account
    }()
    
    func loadingAnimation() {
        if activityView == nil {
            activityView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 80.0, height: 80.0), type: NVActivityIndicatorType.ballRotateChase, color: UIColor.white, padding: 0.0)
            // add subview
            view.addSubview(activityView)
            // autoresizing mask
            activityView.translatesAutoresizingMaskIntoConstraints = false
            // constraints
            activityView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            activityView.topAnchor.constraint(equalTo: vnSubmit.bottomAnchor, constant: 25).isActive = true
        }
        activityView.startAnimating()
    }
    func stopAnimation() {
        activityView.stopAnimating()
    }
    
    func createAccountPresent() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFade
        view.window!.layer.add(transition, forKey: kCATransition)
        present(CreateAccount(), animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        
        //Subviews//
        view.addSubview(backgroundImage)
        view.addSubview(vnTitle)
        view.addSubview(vnEmail)
        view.addSubview(vnPassword)
        view.addSubview(vnSubmit)
        view.addSubview(vnCreateAccount)
        view.addSubview(vnWelcome)
        
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        vnWelcome.widthAnchor.constraint(equalToConstant: 145).isActive = true
        vnWelcome.heightAnchor.constraint(equalToConstant: 55).isActive = true
        vnWelcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        vnWelcome.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 130).isActive = true
        
        
        vnEmail.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnEmail.topAnchor.constraint(equalTo: view.topAnchor, constant: 225).isActive = true
        vnEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnPassword.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 325).isActive = true
        vnPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnSubmit.widthAnchor.constraint(equalToConstant: 125).isActive = true
        vnSubmit.heightAnchor.constraint(equalToConstant: 35).isActive = true
        vnSubmit.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnSubmit.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
        vnCreateAccount.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnCreateAccount.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vnCreateAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnCreateAccount.topAnchor.constraint(equalTo: view.topAnchor, constant: 600).isActive = true
        
    }
}

