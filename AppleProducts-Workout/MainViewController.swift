//
//  ViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class MainViewController: UIViewController, ProductSelectionDelegate {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    
    var image: String? = "apple_products"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Products" {
            guard let destVC = (segue.destination as? ProductsViewController) else { return }
            destVC.productSelectionDelegate = self
        }
    }
    
    func didSelectProduct(product: String) {
        productImage.image = UIImage(named: product)
        productName.text = product
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseProductTapped() {
        performSegue(withIdentifier: "Products", sender: nil)
    }
    
}

