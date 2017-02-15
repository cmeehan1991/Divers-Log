//
//  NavigationViewController.swift
//  Diver's Log
//
//  Created by Connor Meehan on 2/14/17.
//  Copyright © 2017 CBM Web Development. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var navigationTable: UITableView!
    
    let defaults = UserDefaults.standard
    let navItems = ["Home", "Log Book", "Certifications", "Sign Out"] // Remember to set the switch statement if this is changed.
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Hello, world")
        let myCell = tableView.dequeueReusableCell(withIdentifier: "navCell", for:indexPath) as! NavigationTableViewCell
        myCell.navigationLabel.text = navItems[indexPath.row]
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0:
            let centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            break
        case 1:
            let centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "LogBookViewController") as! LogBookViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            break
        case 2: break
        case 3:
            let centerViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            let centerNavController = UINavigationController(rootViewController: centerViewController)
            let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
            defaults.set(false, forKey: "IS_LOGIN")
            defaults.set(false, forKey: "HAS_ACCESS")
            break
        default: break
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationTable.delegate = self
        self.navigationTable.dataSource = self
    }
}
