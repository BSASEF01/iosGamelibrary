//
//  VidoGameClass.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/18/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit
import RealmSwift

class VidoGameClass: UIViewController {
    
    class Task {
        
       @objc dynamic var title: String = ""
       @objc dynamic  var dueDate: Date = Dete()
       @objc dynamic var genre: String = ""
       @objc dynamic var aveilablity = true
        
        enum Genre: String{
            case rpg = "RPG"
            case shooter = "Shooter"
            case platformer = "Platformer"
            case battleRoyale = "Battle Royale"
            case mmorpg = "MMOPRG"
            case sandbox = "Sandbox"
            case fightingGeme = "Fighting Geme"
            case survival = "Survival"
        }
        init(title: String, genre: Genre) {
            self.title = title
            self.genre = Genre
            
        }
    
    
    
    
    
    }


    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
