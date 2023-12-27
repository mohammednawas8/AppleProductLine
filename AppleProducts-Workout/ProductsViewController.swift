//
//  ProductsViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

class ProductsViewController: UIViewController  {
    
    // I am not sure if this is a good way of doing it
    var productSelectionDelegate: ProductSelectionDelegate? = nil
    
    override var sheetPresentationController: UISheetPresentationController {
        presentationController as! UISheetPresentationController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSheet()
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
    
    func configureSheet(){
        sheetPresentationController.selectedDetentIdentifier = .medium
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.detents = [
            .medium()
        ]
    }
    func selectProduct(product: String){
        productSelectionDelegate?.didSelectProduct(product: product)
        dismiss(animated: true)
    }
    
}
