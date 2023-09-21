//
//  ViewController.swift
//  sem1
//
//  Created by Данила on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test = normaliseGrades()
        for (key, value) in test {
            print("\(key): \(value)")
        }
    }

    func normaliseGrades() -> [String: Double] {
        iOSNis.students = [
            Student(grades: [1,2,3], fullName: "flowykk1"),
            Student(grades: [4,5,6], fullName: "flowykk2")
        ]
        
        var maxGrade = 0.0
        for student in iOSNis.students {
            if (student.getGrade() > maxGrade) {
                maxGrade = student.getGrade()
            }
        }
        
        var result: [String: Double] = [:]
        
        for student in iOSNis.students {
            result[student.fullName] = (student.getGrade()/maxGrade)*10
        }
        
        return result
    }

}

