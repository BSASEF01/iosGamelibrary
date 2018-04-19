//
//  AddGameViewController.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/18/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class AddGameViewController: UIViewController {

    
    
    @IBOutlet weak var pikerView: A!
    
    @IBOutlet weak var gameTitleTextFilf: UITextField!
    
    let genres = ["RPG", "Shooter","Platformer", "Battle Royale","MMOPRG", "Fighting Game", "survival"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        pikerView.delegate = self
        pikerView.detaSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func pickerView(_ pickView: UIPickerView, numnerOfRowInComponent component: Int) -> Int {
        return genres.count
    }
    
      func pickerView(_ pickView: UIPickerView,titleForRow row, forComponent component: Int) -> String {
       
        return genres[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView)-> Int {
        return 1
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
    }
    
   
}
