//
//  ViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class MainViewController: UIViewController, ProductsVCDelegate {
    
    private let productsViewControllerIdentifier = "Products"
    
    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!
    
    @IBAction func chooseProductTapped() {
        guard let productsVC = storyboard?.instantiateViewController(withIdentifier: productsViewControllerIdentifier)
                as? ProductsViewController else { return }
        productsVC.delegate = self
        present(productsVC, animated: true)
    }
    
    func didSelectProduct(product: String) {
        productImageView.image = UIImage(named: product)
        productNameLabel.text = product
    }
}
