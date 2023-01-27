//
//  DetailViewController.swift
//  Project1
//
//  Created by Reza Koushki on 27/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
	@IBOutlet var imageView: UIImageView!
	
	var selectedImage: String?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationItem.largeTitleDisplayMode = .never
		//title = selectedImage
		
		if let imageToLoad = selectedImage {
			imageView.image = UIImage(named: imageToLoad)
		}
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.hidesBarsOnTap = true
		
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewDidAppear(animated)
		navigationController?.hidesBarsOnTap = false

	}
}
