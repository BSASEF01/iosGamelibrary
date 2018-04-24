//
//  GaemtableViewCell.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/20/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit
class GametableViewcell: UITableViewCell {
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var genraLabel: UILabel!
    @IBOutlet weak var avaliableLabel: UILabel!

    func setUpCell(game: VidoGameClass) {
        nameLable.text = game.title
        genraLabel.text = game.genre
        if game.aveilablity {
         avaliableLabel.text = "Acaliable"
            avaliableLabel.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            avaliableLabel.text = "Not Avaliable"
            avaliableLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
}
