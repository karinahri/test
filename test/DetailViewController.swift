//
//  DetailViewController.swift
//  test
//
//  Created by Karina on 05.09.2024.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var currentIndex: Int?
    var totalImages: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture \(currentIndex ?? 0) of \(totalImages ?? 0)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
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
