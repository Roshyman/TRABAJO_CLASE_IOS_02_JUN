//
//  ViewController.swift
//  ElementosIOS
//
//  Created by Ronald Murillo Solano on 2/6/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//BLUR

    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBAction func btnBlur(_ sender: UIButton) {
    
        let BlurLight = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurView = UIVisualEffectView(effect: BlurLight)
        blurView.frame = imgLogo.bounds
        imgLogo.addSubview(blurView)
    }
    
    //FIN BLUR
    
    
    
    
//DATE PICKER
    @IBOutlet weak var lblDatePicker: UILabel!
    
    @IBOutlet weak var dtpFecha: UIDatePicker!
    
    @IBAction func fnDatePicker(_ sender: UIDatePicker) {
        let fecha = DateFormatter()
        
        fecha.dateStyle = DateFormatter.Style.short
        fecha.timeStyle = DateFormatter.Style.short
        
        let strFecha = fecha.string(from: dtpFecha.date)
        lblDatePicker.text = strFecha
    }
    
//FIN DATE PICKER
    
    
//SLIDER
    @IBOutlet weak var lblSlider: UILabel!
    
    @IBOutlet weak var sldSlider: UISlider!
    
    @IBAction func fnSlider(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        
        lblSlider.text = "\(currentValue)"
    }
//FIN SLIDER
    
//SWITCH
    @IBOutlet weak var EstadoSwitch: UISwitch!
    
    @IBOutlet weak var lblSwitch: UILabel!
//FIN SWITCH
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//SWITCH
        EstadoSwitch.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)
        
//FIN SWITCH
        
        
    }
//SWITCH
    @objc func stateChanged(switchState: UISwitch) {
        if EstadoSwitch.isOn {
            lblSwitch.text = "Encedido"
        } else {
            lblSwitch.text = "Apagado"
        }
    }
//FIN SWITCH
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//ALERT
    @IBAction func btnMostrarAlerta(_ sender: UIButton) {
        let alertController = UIAlertController(title: "EjemploElementos", message:
            "Hola!!!!", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Salir", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
//FIN ALERT
    
    
    
}

