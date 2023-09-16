//
//  ViewController.swift
//  ddrakhmanovPW1
//
//  Created by Данила on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var views: [UIView]!
    var buttonPressCounter:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editLabelCounter()
        self.button.tintColor = self.generateRandomColor()
        var colors = getUniqueColors(n: views.count)
        for view in views {
            view.backgroundColor = colors.popFirst()
            view.layer.cornerRadius = .random(in: 5...35)
        }
    }
    
    @IBAction func buttonWasPressed(_ sender: UIButton) {
        buttonPressCounter += 1
        editLabelCounter()
        self.button.isEnabled = false
        var colors = getUniqueColors(n: views.count)
        
        for view in views {
            UIView.animate(
                withDuration: 0.7,
                animations: {
                    view.backgroundColor = colors.popFirst()
                    view.layer.cornerRadius = .random(in: 5...35)
                    self.button.tintColor = self.generateRandomColor()
                },
                completion: { [weak self] _ in
                    self?.button.isEnabled = true
                }
            )
        }
    }
    
    func editLabelCounter() {
        label.text = "Colors were changed " + String(buttonPressCounter) + " times!"
    }
    
    func generateRandomColor() -> UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1
        )
    }
    
    func getUniqueColors(n: Int) -> Set<UIColor> {
        var result = Set<UIColor>()
        while result.count != n {
            result.insert(generateRandomColor())
        }
        
        return result
    }
}

