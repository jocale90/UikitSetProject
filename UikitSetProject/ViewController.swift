//
//  ViewController.swift
//  UikitSetProject
//
//  Created by Jose Pernia on 2024-05-14.
//
    
import UIKit

class ViewController: UIViewController {

    var label: UILabel!
    var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // Label
        label = UILabel()
        label.text = "Hello, World!"
        label.textAlignment = .center
        label.textColor = .black
        label.frame = CGRect(x: (self.view.frame.width - 200) / 2, y: 100, width: 200, height: 50)
        self.view.addSubview(label)
        
        // First Button
        let button1 = UIButton(type: .system)
        button1.setTitle("Push New VC", for: .normal)
        button1.frame = CGRect(x: (self.view.frame.width - 150) / 2, y: 200, width: 150, height: 50)
        button1.addTarget(self, action: #selector(buttonTappedNewVC), for: .touchUpInside)
        self.view.addSubview(button1)
        
        // Second Button
        let button2 = UIButton(type: .system)
        button2.setTitle("Push Table VC", for: .normal)
        button2.frame = CGRect(x: (self.view.frame.width - 150) / 2, y: 270, width: 150, height: 50)
        button2.addTarget(self, action: #selector(buttonTappedTableVC), for: .touchUpInside)
        self.view.addSubview(button2)
        
        // TextField
        textField = UITextField()
        textField.placeholder = "Enter text"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: (self.view.frame.width - 200) / 2, y: 350, width: 200, height: 40)
        textField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
        self.view.addSubview(textField)
        
        // Switch
        let uiSwitch = UISwitch()
        uiSwitch.frame = CGRect(x: (self.view.frame.width - uiSwitch.frame.width) / 2, y: 400, width: 0, height: 0)
        uiSwitch.addTarget(self, action: #selector(switchToggled), for: .valueChanged)
        self.view.addSubview(uiSwitch)
        
        // Slider
        let slider = UISlider(frame: CGRect(x: (self.view.frame.width - 200) / 2, y: 450, width: 200, height: 50))
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        self.view.addSubview(slider)
        
        // Segmented Control
        let segmentedControl = UISegmentedControl(items: ["First", "Second", "Third"])
        segmentedControl.frame = CGRect(x: (self.view.frame.width - 300) / 2, y: 500, width: 300, height: 30)
        segmentedControl.addTarget(self, action: #selector(segmentedControlChanged), for: .valueChanged)
        self.view.addSubview(segmentedControl)
        
        // Image View
        let imageView = UIImageView(image: UIImage(named: "exampleImage"))
        imageView.frame = CGRect(x: (self.view.frame.width - 100) / 2, y: 550, width: 100, height: 100)
        self.view.addSubview(imageView)
    }
    
    @objc func buttonTappedNewVC() {
        let newViewController = UIViewController()
        newViewController.view.backgroundColor = .white
        newViewController.title = "New View Controller"
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
    @objc func buttonTappedTableVC() {
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
    }
    
    @objc func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is ON")
        } else {
            print("Switch is OFF")
        }
    }
    
    @objc func sliderValueChanged(_ sender: UISlider) {
        print("Slider value is \(sender.value)")
    }
    
    @objc func segmentedControlChanged(_ sender: UISegmentedControl) {
        print("Selected segment index is \(sender.selectedSegmentIndex)")
    }
    
    @objc func textFieldChanged(_ sender: UITextField) {
        label.text = sender.text
    }
}
