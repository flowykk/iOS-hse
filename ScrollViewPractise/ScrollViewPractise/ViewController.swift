//
//  ViewController.swift
//  ScrollViewPractise
//
//  Created by Данила on 03.11.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let borderH: CGFloat = 20
    var sumH: CGFloat = 0
    let sv: UIScrollView! = UIScrollView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        createContents()
    }
    
    func setupScrollView() {
        sv.delegate = self
        sv.isScrollEnabled = true
        sv.isPagingEnabled = false
        sv.showsVerticalScrollIndicator = true
        sv.backgroundColor = .black
        self.view.addSubview(sv)
    }
    
    func createContents() {
        var cnt = 0
        var c = 0
        
        cnt = 1 // Image pages
        for _ in 0..<cnt {
            let h: CGFloat = UIScreen.main.bounds.width
            let size = CGSize(width: h, height: h)
            let page = createImagePage(size: size, imageName: "Image")
            page.frame.origin.y = sumH
            sv.addSubview(page)
            sumH += h + borderH
        }
        
        cnt = 1 // Label pages
        for i in 0..<cnt {
            let h: CGFloat = UIScreen.main.bounds.width / 4
            let size = CGSize(width: UIScreen.main.bounds.width, height: h)
            let page = createLabelPage(size: size, text: "Friday, October 7th", tag: i + 1)
            page.frame.origin.y = sumH
            sv.addSubview(page)
            sumH += h + borderH
        }
        
        cnt = 5 // Custom MyCell pages
        for i in 0..<cnt {
            let h: CGFloat = UIScreen.main.bounds.width / 4
            let size = CGSize(width: UIScreen.main.bounds.width, height: h)
            let page = createMyCellPage(size: size, index: i + 1)
            page.frame.origin.y = sumH
            sv.addSubview(page)
            sumH += h + borderH
        }
        
        sv.contentSize = CGSize(width: UIScreen.main.bounds.width, height: sumH - borderH)
    }
    
    func createImagePage(size: CGSize, imageName: String, radius: CGFloat = 20) -> UIView {
        let aFrame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let aPage = UIImageView(frame: aFrame)
        aPage.image = UIImage(named: imageName)
        aPage.translatesAutoresizingMaskIntoConstraints = true // !
        aPage.layer.cornerRadius = radius
        aPage.layer.masksToBounds = true
        
        return aPage
    }
    
    
    func createLabelPage(size: CGSize, text: String, radius: CGFloat = 20, tag: Int = -1) -> UIView {
        let aFrame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let aLabel = UILabel(frame: aFrame)
        aLabel.lineBreakMode = .byWordWrapping
        aLabel.numberOfLines = 0
        aLabel.translatesAutoresizingMaskIntoConstraints = true // !
        aLabel.layer.cornerRadius = radius
        aLabel.layer.masksToBounds = true
        aLabel.backgroundColor = .white
        aLabel.font = aLabel.font.withSize(24)
        aLabel.textAlignment = .center
        aLabel.textColor = .black
        aLabel.text = text
        aLabel.tag = (tag >= 0) ? tag : aLabel.tag
        return aLabel
    }
    
    
    func createMyCellPage(size: CGSize, radius: CGFloat = 20, index: Int = -1) -> UIView {
        let aFrame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let aPage = MyCell(frame: aFrame)
        aPage.dateLabel.text = String(index)
        aPage.translatesAutoresizingMaskIntoConstraints = true // !
        aPage.layer.cornerRadius = radius
        aPage.layer.masksToBounds = true
        aPage.backgroundColor = .white
        return aPage
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < -borderH {
            print("top")
        } else if (scrollView.contentOffset.y > sumH - UIScreen.main.bounds.height) {
            print("bottom")
        }
    }
    
    
}

