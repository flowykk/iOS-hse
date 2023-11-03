//
//  ViewController.swift
//  CollViewTest
//
//  Created by Aleksa Khruleva on 20.10.2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    var collectionView: UICollectionView!
    let cellId = "Cell"
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MyCell
        cell.dateLabel.text = String(indexPath.row + 1)
        cell.dayLabel.text = "Fri"
        cell.distanceLabel.text = String((indexPath.row + 1) * 1000) + " m"
        
        cell.layer.cornerRadius = 15
        cell.layer.masksToBounds = true

        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    
    func setupCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 50, left: 10, bottom: 25, right: 10)
        layout.itemSize = CGSize(width: (view.frame.width - 60) / 2, height: view.frame.height / 10)
        
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
        
        collectionView = UICollectionView(frame: rect, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
                
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.showsVerticalScrollIndicator = true
        collectionView.backgroundColor = UIColor.white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.layer.cornerRadius = 35
        collectionView.layer.masksToBounds = true
        
        self.view.addSubview(collectionView)
    }
    
}

