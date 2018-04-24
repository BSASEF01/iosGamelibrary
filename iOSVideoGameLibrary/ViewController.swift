//
//  ViewController.swift
//  iOSVideoGameLibrary
//
//  Created by Devan Allara on 4/12/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection selction: Int) -> Int {
        
        return GameManager.sharedInstance.getGameCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =
        tableView.dequeueReusableCell(withIdentifier: "gameCell") as! GametableViewcell
        cell.setUpCell(game:GameManager.sharedInstance.getGame(index: indexPath.row))
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 80.0
    }
    func tableView(_tableView:UITableView,editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
        let game = GameManager.sharedInstance.getGame(index: indexPath.row)
        let title = game.aveilablity ? "check out" : "check In"
        
        let checkOutAction = UITableViewRowAction(style: .normal, title: title) {(_,_) in
            let cellForIndex = self.tableView.cellForRow(at: indexPath) as! GametableViewcell
            GameManager.sharedInstance.checkInOrOut(game: game)
            self.tableView.reloadData()
        }
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {(_,_) in
            GameManager.sharedInstance.removeGame(game)
            self.tableView.deleteRows(at:[indexPath], with: .fade)
            self.tableView.reloadData()
            
            
        }
    
        return[deleteAction,checkOutAction]
    
    }
    @IBAction func unwindToLibrary(segue: UIStoryboardSegue) {
    
 }



}
