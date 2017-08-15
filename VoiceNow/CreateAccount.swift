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
    let backgroundView: UIView = {
        let bgv = UIView()
        bgv.translatesAutoresizingMaskIntoConstraints = false
        bgv.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        return bgv
    }()
    let vnBottomBox: UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        return box
    }()
    let vnNLine: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor.white
        return line
    }()
    let vnEPLine: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor.white
        return line
    }()
    let vnCPLine: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor.white
        return line
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
    let vnFields: UILabel = {
        let fields = UILabel()
        fields.text = "Use the fields below to\n create your account."
        fields.lineBreakMode = .byWordWrapping
        fields.numberOfLines = 2
        fields.textColor = UIColor.white
        fields.textAlignment = .center
        fields.font = UIFont(name: "Roboto-Thin", size: 22)
        fields.translatesAutoresizingMaskIntoConstraints = false
        return fields
    }()
    let vnName: UITextField = {
        let name = UITextField()
        name.textAlignment = .center
        name.textColor = UIColor.white
        name.font = UIFont(name: "RobotoCondensed-Light", size: 25)
        name.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        name.layer.cornerRadius = 20
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    let vnEmail: UITextField = {
        let email = UITextField()
        email.textAlignment = .center
        email.textColor = UIColor.white
        email.font = UIFont(name: "RobotoCondensed-Light", size: 25)
        email.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        email.layer.cornerRadius = 20
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    let vnPassword: UITextField = {
        let password = UITextField()
        password.textAlignment = .center
        password.textColor = UIColor.white
        password.font = UIFont(name: "RobotoCondensed-Light", size: 25)
        password.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        password.layer.cornerRadius = 20
        password.translatesAutoresizingMaskIntoConstraints = false
        password.isSecureTextEntry = true
        return password
    }()
    let vnConfirmPassword: UITextField = {
        let confirmPassword = UITextField()
        confirmPassword.textAlignment = .center
        confirmPassword.textColor = UIColor.white
        confirmPassword.font = UIFont(name: "RobotoCondensed-Light", size: 25)
        confirmPassword.attributedPlaceholder = NSAttributedString(string: "Confirm password", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        confirmPassword.layer.cornerRadius = 20
        confirmPassword.translatesAutoresizingMaskIntoConstraints = false
        confirmPassword.isSecureTextEntry = true
        return confirmPassword
    }()
    let vnNext: UIButton = {
        let next = UIButton()
        next.setTitle("Next", for: .normal)
        next.backgroundColor = UIColor.clear
        next.setTitleColor(UIColor.white, for: .normal)
        next.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 40)
        next.titleLabel!.lineBreakMode = .byWordWrapping
        next.titleLabel!.textAlignment = .center
        next.translatesAutoresizingMaskIntoConstraints = false
        next.addTarget(self, action: #selector(profilePresent), for: .touchUpInside)
        return next
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
    func profilePresent() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionReveal
        view.window!.layer.add(transition, forKey: kCATransition)
        present(setupProfile(), animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        view.addSubview(backgroundImage)
        view.addSubview(backgroundView)
        view.addSubview(vnBottomBox)
        view.addSubview(vnNLine)
        view.addSubview(vnEPLine)
        view.addSubview(vnCPLine)
        view.addSubview(vnTitle)
        view.addSubview(vnFields)
        view.addSubview(vnName)
        view.addSubview(vnEmail)
        view.addSubview(vnPassword)
        view.addSubview(vnConfirmPassword)
        view.addSubview(vnbackToLogin)
        view.addSubview(vnNext)
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true

        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        vnFields.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnFields.heightAnchor.constraint(equalToConstant: 55).isActive = true
        vnFields.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnFields.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
        
        vnName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnName.topAnchor.constraint(equalTo: view.topAnchor, constant: 199).isActive = true
        vnName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnEmail.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnEmail.topAnchor.constraint(equalTo: view.topAnchor, constant: 279).isActive = true
        vnEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnPassword.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 359).isActive = true
        vnPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnConfirmPassword.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnConfirmPassword.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnConfirmPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 439).isActive = true
        vnConfirmPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnNext.widthAnchor.constraint(equalToConstant: 125).isActive = true
        vnNext.heightAnchor.constraint(equalToConstant: 35).isActive = true
        vnNext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnNext.topAnchor.constraint(equalTo: view.topAnchor, constant: 520).isActive = true
        
        vnbackToLogin.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnbackToLogin.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vnbackToLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnbackToLogin.topAnchor.constraint(equalTo: view.topAnchor, constant: 625).isActive = true
        view.bringSubview(toFront: vnbackToLogin)
        
        vnBottomBox.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        vnBottomBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnBottomBox.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        vnNLine.widthAnchor.constraint(equalTo: vnName.widthAnchor).isActive = true
        vnNLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        vnNLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 248).isActive = true
        vnNLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnEPLine.widthAnchor.constraint(equalTo: vnName.widthAnchor).isActive = true
        vnEPLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        vnEPLine.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vnEPLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnCPLine.widthAnchor.constraint(equalTo: vnName.widthAnchor).isActive = true
        vnCPLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        vnCPLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 418).isActive = true
        vnCPLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    

    }
    
}
