//
//  VidoGameClass.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/18/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit
import RealmSwift

class VidoGameClass: Object {
    
       @objc dynamic var title: String = ""
       @objc dynamic  var dueDate: Date = Date()
       @objc dynamic var genre: String = ""
       @objc dynamic var aveilablity = true

    
}
 
