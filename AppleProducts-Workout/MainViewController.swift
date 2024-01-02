//
//  ViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class MainViewController: UIViewController, ProductSelectionDelegate {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productLabel: UILabel!
    
    var image = "apple_products" {
        didSet {
            productImage.image = UIImage(named: image)
        }
    }
    var productName = "Apple Product Line" {
        didSet {
            productLabel.text = productName
        }
    }
    
    func didSelectProduct(product: String) {
        productImage.image = UIImage(named: product)
        productLabel.text = product
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseProductTapped() {
        
    }
    
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue){
        
    }
    
}

