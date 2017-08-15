//
//  SetupProfile.swift
//  VoiceNow
//
//  Created by James Stephens on 12/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

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
        picture.layer.cornerRadius = 100
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
    let vnBottomBox: UIView = {
        let box = UIView()
        box.translatesAutoresizingMaskIntoConstraints = false
        box.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        return box
    }()
    
    
    
    
    
    
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
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        vnProfilePicture.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnProfilePicture.heightAnchor.constraint(equalToConstant: 200).isActive = true
        vnProfilePicture.topAnchor.constraint(equalTo: vnTitle.bottomAnchor, constant: 25).isActive = true
        vnProfilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        vnCompanyName.widthAnchor.constraint(equalToConstant: 250).isActive = true
        vnCompanyName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnCompanyName.topAnchor.constraint(equalTo: vnProfilePicture.bottomAnchor, constant: 25).isActive = true
        vnCompanyName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
        vnLine.widthAnchor.constraint(equalTo: vnCompanyName.widthAnchor).isActive = true
        vnLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        vnLine.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnLine.topAnchor.constraint(equalTo: vnCompanyName.bottomAnchor, constant: 0).isActive = true
        
        vnBottomBox.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        vnBottomBox.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnBottomBox.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
}
