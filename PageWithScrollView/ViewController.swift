//
//  ViewController.swift
//  PageWithScrollView
//
//  Created by MAHHA on 15/03/2017.
//  Copyright © 2017 MAHHA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        var contentWidth : CGFloat = 0.0
        let scrollwidth : CGFloat = scrollView.frame.size.width
    
        for i in 0...2 {
            
            let icon = UIImage(named: "icon\(i).png")
            let imageView = UIImageView(image : icon)
            
            var newX: CGFloat = 0.0
            
            newX = scrollwidth/2 + (scrollwidth)*CGFloat(i)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: view.frame.midY-75, width: 150, height: 150) // 75 = 150/2
            
            
            
           contentWidth += newX
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

