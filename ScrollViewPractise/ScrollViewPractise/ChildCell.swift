//
//  MyCell.swift
//  ScrollViewNisWs
//  Created by Dmitry Alexandrov
//
import UIKit

class ChildCell: UIView
{
    static var count = 1
    
    public let Button: UIButton = {
        let control = UIButton()
        control.translatesAutoresizingMaskIntoConstraints = false
        control.setTitle("Button \(count)", for: .normal)
        control.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        control.setTitleColor(.black, for: .normal)
        control.backgroundColor = .red
        control.layer.cornerRadius = 10

        return control
    }()
    
    let dateLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        control.textAlignment = .center
        control.textColor = .red
        control.text = String(count)
        count += 1
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
        addSubview(Button)
        addSubview(dateLabel)
        
        dateLabel.pinLeft(to: Button.trailingAnchor, 10)
        dateLabel.pinBottom(to: self.bottomAnchor, 0)
        
        Button.setHeight(30)
        Button.setWidth(70)
        Button.pinCenterX(to: self.centerXAnchor)
        Button.pinLeft(to: self.leadingAnchor, 10)
        Button.pinBottom(to: self.bottomAnchor, -5)
        
        
    }
}
