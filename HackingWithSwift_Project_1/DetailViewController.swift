//
//  DetailViewController.swift
//  HackingWithSwift_Project_1
//
//  Created by Anthony Lee on 3/31/19.
//  Copyright © 2019 anthonyLee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var maxNumber: Int!
    var currentIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let selectedImage = selectedImage {
            imageView.image = UIImage(named: selectedImage)
        }
        
        navigationItem.title = "Picture \(currentIndex!) of \(maxNumber!)"
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
