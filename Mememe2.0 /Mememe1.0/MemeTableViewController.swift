//
//  MemeTableViewController.swift
//  Mememe1.0
//
//  Created by Ghaida Almahmoud on 14/04/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController {
    
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
   
    @IBAction func add(_ sender: Any) {
    
        let Controller = storyboard!.instantiateViewController(withIdentifier: "Meme")
        navigationController?.isNavigationBarHidden = true
        tabBarController?.tabBar.isHidden = true
        self.navigationController!.pushViewController(Controller, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.isNavigationBarHidden = false
        self.tableView.reloadData()
    }
    
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       // let cell = UITableViewCell(style: .default, reuseIdentifier: "MemeCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewControllerCell", for: indexPath) as! MemeTableViewControllerCell
        
        let meme = memes[indexPath.row]
        cell.ImageTable!.image = meme.memedImage
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = storyboard!.instantiateViewController(withIdentifier: "show") as! DetailViewController
        let meme = memes[indexPath.row]
        detailController.memes = meme
           navigationController?.pushViewController(detailController, animated: true)
    
}
}
