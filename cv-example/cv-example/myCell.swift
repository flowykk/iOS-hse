//
//  MyCell.swift
//  CollViewTest
//
//  Created by Aleksa Khruleva on 20.10.2023.
//

import UIKit

class MyCell: UICollectionViewCell
{
    let profileImageButton: UIButton = {
        let control = UIButton()
        control.backgroundColor = UIColor.white //white
        control.layer.cornerRadius = 4 // 18
        control.clipsToBounds = false
        control.setImage(UIImage(named: "Profile"), for: .normal)
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dateLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        control.textAlignment = .center
        control.textColor = UIColor.black
        control.text = "30"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dayLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 12)
        control.textAlignment = .center
        control.textColor = UIColor.black
        control.text = "Fri"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    let distanceLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 14)
        control.textColor = UIColor.white //lightGray
        control.text = "2000 m"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addView() {
        backgroundColor = UIColor.black
        
        addSubview(profileImageButton)
        addSubview(dateLabel)
        addSubview(dayLabel)
        addSubview(distanceLabel)
        
        profileImageButton.pinLeft(to: self, 5)
        profileImageButton.pinTop(to: self, 10)
        profileImageButton.setHeight(36)
        profileImageButton.setWidth(36)
        
        dateLabel.pinCenterY(to: profileImageButton.centerYAnchor, -6)
        dateLabel.pinCenterX(to: profileImageButton.centerXAnchor)
        
        dayLabel.pinCenterY(to: profileImageButton.centerYAnchor, 9)
        dayLabel.pinCenterX(to: profileImageButton.centerXAnchor)
        
        distanceLabel.pinTop(to: profileImageButton.bottomAnchor, 10)
        distanceLabel.pinLeft(to: self, 5)
    }
}

