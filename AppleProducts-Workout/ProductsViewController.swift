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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSheet()
    }
        
    @IBAction func iphoneTapped() {
        selectProduct(product: iPhone)
    }
    @IBAction func iPadTapped() {
        selectProduct(product: iPad)
    }
    @IBAction func macBookTapped() {
        selectProduct(product: macBook)
    }
    
    func configureSheet() {
        if let sheetPresentationController = sheetPresentationController {
            sheetPresentationController.prefersGrabberVisible = true
            sheetPresentationController.selectedDetentIdentifier = .medium
            sheetPresentationController.detents = [.medium()]
        }
    }
    
    func selectProduct(product: String) {
        delegate?.didSelectProduct(product: product)
        dismiss(animated: true)
    }
}
