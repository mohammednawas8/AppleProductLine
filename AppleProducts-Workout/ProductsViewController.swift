//
//  ProductsViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class ProductsViewController: UIViewController {
    
    var didSelectProduct : ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func iphoneTapped() {
        selectProduct(product: "iPhone")
    }
    
    @IBAction func iPadTapped() {
        selectProduct(product: "iPad")
    }
    
    @IBAction func macBookTapped() {
        selectProduct(product: "MacBook")
    }
    
   
    func selectProduct(product: String){
        didSelectProduct?(product)
        dismiss(animated: true)
    }
    
}
