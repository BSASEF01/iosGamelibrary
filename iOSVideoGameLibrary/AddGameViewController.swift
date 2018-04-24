//
//  AddGameViewController.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/18/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class AddGameViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    
    @IBOutlet weak var pikerView: UIPickerView!
    
    @IBOutlet weak var gameTitleTextField: UITextField!
    
    let genres = ["RPG", "Shooter","Platformer", "Battle Royale","MMOPRG", "Fighting Game", "survival"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        pikerView.delegate = self
        pikerView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func pickerView(_ pickView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genres.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genres[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView)-> Int {
        return 1
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
     
        if (gameTitleTextField.text?.isEmpty)! {
            let alert = UIAlertController(title: "Error", message: "please input a game title", preferredStyle: .alert)
            self.present(alert,animated: true)
           
        } else{
            var newGame = VidoGameClass()
            newGame.title = gameTitleTextField.text!
            newGame.genre = genres[pikerView.selectedRow(inComponent: 0)]
            GameManager.sharedInstance.addGame(newGame)
           self.performSegue(withIdentifier: "unWindToLibrary", sender: self)
        }
    
    
    }
    
   
}
