//
//  ViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseProductTapped() {
        guard let productsVC = storyboard?.instantiateViewController(withIdentifier: "Products") as? ProductsViewController else { return }
        productsVC.didSelectProduct = { (product) in
            self.productImage.image = UIImage(named: product)
            self.productName.text = product
        }
        if let sheet = productsVC.sheetPresentationController {
            sheet.detents = [.medium()]
            sheet.prefersGrabberVisible = true
        }
            present(productsVC, animated: true)
    }
    
}

