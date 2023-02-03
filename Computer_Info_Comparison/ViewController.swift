//
//  ViewController.swift
//  Computer_Info_Comparison
//
//  Created by Akshay Yendhe on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var machine1 : ComputerInfo?
    var machine2 : ComputerInfo?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ramSizeTextField: UITextField!
    @IBOutlet weak var storageSizeTextField: UITextField!
    @IBOutlet weak var screenSizeTextField: UITextField!
    @IBOutlet weak var processorTextField: UITextField!
    @IBOutlet weak var batteryLifeTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var compareButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        oneButton.isEnabled = true
        twoButton.isEnabled = false
        compareButton.isEnabled = false
    }
    
    @IBAction func oneButtonAction(_ sender: Any) {
       
        if let name = nameTextField.text , let ramSizeText = ramSizeTextField.text, let ram = Int(ramSizeText), let storageSizeText = storageSizeTextField.text, let storage = Int(storageSizeText), let screenSizeText = screenSizeTextField.text, let screenSize = Double(screenSizeText), let processorText = processorTextField.text, let processor = Int(processorText), let batteryLifeText = batteryLifeTextField.text, let batteryLife = Int(batteryLifeText), let priceText = priceTextField.text, let price = Int(priceText){
            
            let machine = ComputerInfo(name: name, ram: ram, storage: storage, screenSize: screenSize, processor: processor, batteryLife: batteryLife, price: price)
            machine1 = machine
            
            
        }
        nameTextField.text = ""
        ramSizeTextField.text = ""
        storageSizeTextField.text = ""
        screenSizeTextField.text = ""
        processorTextField.text = ""
        batteryLifeTextField.text = ""
        priceTextField.text = ""
        twoButton.isEnabled = true
        oneButton.isEnabled = false
        compareButton.isEnabled = false

        
    }
    
    @IBAction func twoButtonAction(_ sender: Any) {
        
        if let name = nameTextField.text , let ramSizeText = ramSizeTextField.text, let ram = Int(ramSizeText), let storageSizeText = storageSizeTextField.text, let storage = Int(storageSizeText), let screenSizeText = screenSizeTextField.text, let screenSize = Double(screenSizeText), let processorText = processorTextField.text, let processor = Int(processorText), let batteryLifeText = batteryLifeTextField.text, let batteryLife = Int(batteryLifeText), let priceText = priceTextField.text, let price = Int(priceText){
            
            let machine = ComputerInfo(name: name, ram: ram, storage: storage, screenSize: screenSize, processor: processor, batteryLife: batteryLife, price: price)
            machine2 = machine
            oneButton.isEnabled = false
            twoButton.isEnabled = false
            compareButton.isEnabled = true
        }
    }
    
    @IBAction func compareButtonAction(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: .none)
        let compareVC = main.instantiateViewController(withIdentifier: "CompareViewController") as! CompareViewController
        compareVC.machine1 = machine1
        compareVC.machine2 = machine2
        self.present(compareVC, animated: true)
        
    }
}

