//
//  ConversionViewController.swift
//  CurrencyConverterProject
//
//  Created by Chase Lawhead on 2/18/24.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet weak var amountUSD: UILabel!
    
    @IBOutlet weak var amountYuan: UILabel!
    
    @IBOutlet weak var amountYen: UILabel!
    
    @IBOutlet weak var amountPeso: UILabel!
    
    @IBOutlet weak var amountEuro: UILabel!
    
    var converterLogic : ConverterLogic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountUSD.text = "$ \(String(describing: converterLogic.amount))"
        if converterLogic.yuan {
            amountYuan.text = String(converterLogic.yuanAmount)
        }
        else {
            amountYuan.text = "--------"
        }
        if converterLogic.peso {
            amountPeso.text = String(converterLogic.pesoAmount)
        }
        else {
            amountPeso.text = "--------"
        }
        if converterLogic.euro {
            amountEuro.text = String(converterLogic.euroAmount)
        }
        else {
            amountEuro.text = "--------"
        }
        if converterLogic.yen {
            amountYen.text = String(converterLogic.yenAmount)
        }
        else {
            amountYen.text = "--------"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
