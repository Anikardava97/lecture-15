//
//  ViewController.swift
//  12 lecture
//
//  Created by Ani's Mac on 25.10.23.
//

import UIKit

struct Coffee {
    var productName: String
    var hasChocolate: Bool
    var price: Double
    var description: String
}

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var productNameLabel: UILabel!
    @IBOutlet private  weak var hasChocolateLabel: UILabel!
    @IBOutlet private weak var descriptionTextField: UITextView!
    @IBOutlet private weak var sizeOption: UIButton!
    @IBOutlet private weak var priceLabel: UILabel!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: mochaCoffee)
    }
    
    // MARK: - Instances
    let mochaCoffee = Coffee(
        productName: "Mocha",
        hasChocolate: true,
        price: 4.90,
        description: "A delicious coffee with chocolate. Enjoy the perfect blend of high-quality coffee beans and delicious chocolate in our Mocha. It's a delightful mix that gives you a tasty and easygoing coffee experience."
    )
    
    let blackCoffee = Coffee(
        productName: "Black",
        hasChocolate: false,
        price: 2.55,
        description: "Simple and pure, our black coffee is a classic brew made from high-quality beans"
    )
    
    // MARK: - Methods
    private func updateUI(with coffee: Coffee) {
        productNameLabel.text = coffee.productName
        hasChocolateLabel.text = coffee.hasChocolate ? "With Chocolate" : "Without Chocolate"
        descriptionTextField.text = coffee.description
        priceLabel.text = "$\(coffee.price)"
    }
}
