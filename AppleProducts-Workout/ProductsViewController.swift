//
//  ProductsViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class ProductsViewController: UIViewController  {
        
    override var sheetPresentationController: UISheetPresentationController {
        presentationController as! UISheetPresentationController
    }
    
    var selectedProduct: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSheet()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! MainViewController
        if let selectedProduct {
            destVC.image = selectedProduct
            destVC.productName = selectedProduct
        }
    }
    
    
    @IBAction func iphoneTapped() {
        selectedProduct = "iPhone"
    }
    
    @IBAction func iPadTapped() {
        selectedProduct = "iPad"
    }
    
    @IBAction func macBookTapped() {
        selectedProduct = "MacBook"
    }
    
    func configureSheet(){
        sheetPresentationController.selectedDetentIdentifier = .medium
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.detents = [
            .medium()
        ]
    }
    
}
