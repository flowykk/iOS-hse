//
//  MyCell.swift
//  ScrollViewNisWs
//  Created by Dmitry Alexandrov
//
import UIKit

class MyCell: UIView
{
    let profileImageButton: UIButton = {
        let control = UIButton()
        control.backgroundColor = UIColor.black //white
        control.layer.cornerRadius = 10 // 18
        control.clipsToBounds = false
        control.setImage(UIImage(named: "Profile"), for: .normal)
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dateLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        control.textAlignment = .center
        control.textColor = .white
        control.text = "30"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dayLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 12)
        control.textAlignment = .center
        control.textColor = .white
        control.text = "Fri"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    var childCellView: UIView = ChildCell(frame: CGRect(x: 0, y: 0, width: 100, height: 40))

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addView() {
        backgroundColor = UIColor.blue // black
        addSubview(childCellView)
        addSubview(profileImageButton)
        addSubview(dateLabel)
        addSubview(dayLabel)
        
        childCellView.pinTop(to: topAnchor, 80)
        
        profileImageButton.pinLeft(to: leadingAnchor, 10)
        profileImageButton.pinTop(to: topAnchor, 10)
        profileImageButton.setHeight(36)
        profileImageButton.setWidth(36)

        dateLabel.pinCenterY(to: profileImageButton.centerYAnchor, -6)
        dateLabel.pinCenterX(to: profileImageButton.centerXAnchor)

        dayLabel.pinCenterY(to: profileImageButton.centerYAnchor, 9)
        dayLabel.pinCenterX(to: profileImageButton.centerXAnchor)
    }
}
