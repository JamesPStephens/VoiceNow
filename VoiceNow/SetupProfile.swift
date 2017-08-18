//
//  SetupProfile.swift
//  VoiceNow
//
//  Created by James Stephens on 12/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class setupProfile: UIViewController {
    
    
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
    let vnTitle: UILabel = {
        let title = UILabel()
        title.text = "You"
        title.textColor = UIColor.white
        title.backgroundColor = UIColor.clear
        title.textAlignment = .center
        title.font = UIFont(name: "Roboto-Thin", size: 50)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let vnProfilePicture: UIImageView = {
        let picture = UIImageView()
        picture.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        picture.layer.cornerRadius = 75
        picture.layer.borderColor = UIColor.white.cgColor
        picture.layer.borderWidth = 1
        picture.translatesAutoresizingMaskIntoConstraints = false
        return picture
    }()
    let vnCompanyName: UITextField = {
        let company = UITextField()
        company.textAlignment = .center
        company.textColor = UIColor.white
        company.font = UIFont(name: "RobotoCondensed-Light", size: 25)
        company.attributedPlaceholder = NSAttributedString(string: "Company name", attributes: [NSForegroundColorAttributeName : UIColor.white.withAlphaComponent(0.5)])
        company.layer.cornerRadius = 20
        company.translatesAutoresizingMaskIntoConstraints = false
        return company
    }()
    let vnLine: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = UIColor.white
        return line
    }()
    let vnBackToAccount: UIButton = {
        let account = UIButton()
        account.setTitle("Back", for: .normal)
        account.setTitleColor(UIColor.white, for: .normal)
        account.backgroundColor = UIColor.clear
        account.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 16)
        account.titleLabel!.lineBreakMode = .byWordWrapping
        account.titleLabel!.textAlignment = .center
        account.translatesAutoresizingMaskIntoConstraints = false
        account.addTarget(self, action: #selector(presentAccount), for: .touchUpInside)
        return account
    }()
    let vnSkip: UIButton = {
        let skip = UIButton()
        skip.setTitle("Skip profile and create your account", for: .normal)
        skip.setTitleColor(UIColor.white, for: .normal)
        skip.backgroundColor = UIColor.clear
        skip.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 16)
        skip.titleLabel!.lineBreakMode = .byWordWrapping
        skip.titleLabel!.textAlignment = .center
        skip.translatesAutoresizingMaskIntoConstraints = false
        skip.addTarget(self, action: #selector(skipToList), for: .touchUpInside)
        return skip
    }()
    let vnBottomBox: UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        return box
    }()
    let vnLottieEdit: LOTAnimationView = {
        let lottie = LOTAnimationView(name: "EditButton")
        lottie?.loopAnimation = true
        lottie?.play()
        lottie?.translatesAutoresizingMaskIntoConstraints = false
        return lottie!
    }()
    let vnLottieSuccess: LOTAnimationView = {
        let success = LOTAnimationView(name: "Success")
        success?.loopAnimation = true
        success?.play()
        success?.translatesAutoresizingMaskIntoConstraints = false
        return success!
    }()
    let vnSave: UIButton = {
        let save = UIButton()
        save.setTitle("Save profile and create your account.", for: .normal)
        save.backgroundColor = UIColor.clear
        save.layer.cornerRadius = 10
        save.setTitleColor(UIColor.white, for: .normal)
        save.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 20)
        save.titleLabel!.lineBreakMode = .byWordWrapping
        save.titleLabel!.textAlignment = .center
        save.translatesAutoresizingMaskIntoConstraints = false
        save.addTarget(self, action: #selector(skipToList), for: .touchUpInside)
        return save
    }()
    func presentAccount() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionReveal
        view.window!.layer.add(transition, forKey: kCATransition)
        present(CreateAccount(), animated: true, completion: nil)
    }
    func skipToList() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionReveal
        view.window!.layer.add(transition, forKey: kCATransition)
        present(VoiceList(), animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        
        view.addSubview(backgroundImage)
        view.addSubview(backgroundView)
        view.addSubview(vnTitle)
        view.addSubview(vnProfilePicture)
        view.addSubview(vnCompanyName)
        view.addSubview(vnLine)
        view.addSubview(vnBottomBox)
        view.addSubview(vnBackToAccount)
        view.addSubview(vnSkip)
        view.addSubview(vnLottieEdit)
        view.addSubview(vnSave)
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        view.sendSubview(toBack: backgroundImage)

        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        vnProfilePicture.widthAnchor.constraint(equalToConstant: 150).isActive = true
        vnProfilePicture.heightAnchor.constraint(equalToConstant: 150).isActive = true
        vnProfilePicture.topAnchor.constraint(equalTo: vnTitle.bottomAnchor, constant: 25).isActive = true
        vnProfilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnCompanyName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnCompanyName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnCompanyName.topAnchor.constraint(equalTo: vnProfilePicture.bottomAnchor, constant: 50).isActive = true
        vnCompanyName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
        vnLine.widthAnchor.constraint(equalTo: vnCompanyName.widthAnchor).isActive = true
        vnLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        vnLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnLine.topAnchor.constraint(equalTo: vnCompanyName.bottomAnchor, constant: 0).isActive = true
        
        vnBottomBox.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        vnBottomBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnBottomBox.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        vnBackToAccount.widthAnchor.constraint(equalToConstant: 50).isActive = true
        vnBackToAccount.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vnBackToAccount.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        vnBackToAccount.topAnchor.constraint(equalTo: view.topAnchor, constant: 625).isActive = true
        view.bringSubview(toFront: vnBackToAccount)
        
        vnSkip.widthAnchor.constraint(equalToConstant: 150).isActive = true
        vnSkip.heightAnchor.constraint(equalToConstant: 30).isActive = true
        vnSkip.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        vnSkip.topAnchor.constraint(equalTo: view.topAnchor, constant: 625).isActive = true
        view.bringSubview(toFront: vnSkip)
        
        vnLottieEdit.widthAnchor.constraint(equalToConstant: 150).isActive = true
        vnLottieEdit.heightAnchor.constraint(equalToConstant: 150).isActive = true
        vnLottieEdit.topAnchor.constraint(equalTo: vnProfilePicture.bottomAnchor, constant: -80).isActive = true
        vnLottieEdit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        view.bringSubview(toFront: vnLottieEdit)
        
        vnSave.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnSave.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnSave.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnSave.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        
    
    }
}
