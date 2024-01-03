//
//  ProductsViewController.swift
//  AppleProducts-Workout
//
//  Created by mac on 26/12/2023.
//

import UIKit

protocol ProductsVCDelegate: AnyObject {
    func didSelectProduct(product: String)
}

class ProductsViewController: UIViewController {
    
    private let iPhone = "iPhone"
    private let iPad = "iPad"
    private let macBook = "MacBook"
    
    weak var delegate: ProductsVCDelegate?
    
    @IBAction func iphoneTapped() {
        selectProduct(product: iPhone)
    }
    @IBAction func iPadTapped() {
        selectProduct(product: iPad)
    }
    @IBAction func macBookTapped() {
        selectProduct(product: macBook)
    }
    
    func selectProduct(product: String) {
        delegate?.didSelectProduct(product: product)
        dismiss(animated: true)
    }
}
