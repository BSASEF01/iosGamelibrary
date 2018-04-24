//
//  GameManager.swift
//  iOSVideoGameLibrary
//
//  Created by Bersabeh Asefa on 4/19/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import Foundation
import RealmSwift



final class GameManager {
    
    static let sharedInstance = GameManager()
    
    var games: Results<VidoGameClass>!
    private init() {
        games = realm.objects(VidoGameClass.self)
        
    }
    
    let realm = try! Realm()
    
    let calendar = Calendar.current
    
    
    
    func addGame(_ game: VidoGameClass) {
        try! realm.write {
            realm.add(game)
        }
    }
    
    func removeGame(_ game: VidoGameClass) {
        try! realm.write {
            realm.delete(game)
        }
    }
    
    func getGame(index: Int) -> VidoGameClass {
        return games[index]
    }
    
    func getGameCount() -> Int {
        return games.count
    }
    
    func checkInOrOut(game:VidoGameClass) {
        try! realm.write {
            if game.aveilablity  {
                game.aveilablity = false
                game.dueDate = calendar.date(byAdding: .day, value: 3,to: Date())!
            } else {
                game.aveilablity = true
                game.dueDate = Date()
            }
        }
    }

}
