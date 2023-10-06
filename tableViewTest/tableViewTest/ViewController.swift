//
//  ViewController.swift
//  tableViewTest
//
//  Created by Данила on 06.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTableView: UITableView! = UITableView()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let range = Calendar.current.range(of: .day, in: .month, for: Date())!
        let numberOfDays = range.count
        return numberOfDays
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.myCell, for: indexPath) as! MyCell
        
        let month = Calendar.current.component(.month, from: Date())
        let year = Calendar.current.component(.year, from: Date())
        
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = indexPath.row + 1
        let calendar = Calendar.current
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayOfWeekString = dateFormatter.string(from: calendar.date(from: dateComponents)!)
        
        cell.textLabel?.text = "\(indexPath.row + 1).\(month).\(year), \(dayOfWeekString)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        myTableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        myTableView.register(MyCell.self, forCellReuseIdentifier: Constants.myCell)
        
        myTableView.backgroundColor = .systemGreen
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath) as UITableViewCell?
        print(currentCell!.textLabel!.text!)
    }
}

