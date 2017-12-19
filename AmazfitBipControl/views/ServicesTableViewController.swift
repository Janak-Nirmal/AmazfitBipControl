//
//  ServicesTableViewController.swift
//  AmazfitBipControl
//
//  Created by Круцких Олег on 18.12.2017.
//  Copyright © 2017 Круцких Олег. All rights reserved.
//

import UIKit

class ServicesTableViewController: UITableViewController {

    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    var services = [String: Service]()
    var servicesNumberedArray = [String]()
    
    @IBOutlet weak var switcher: UISwitch!
    @IBAction func switchAll(_ sender: Any) {
        let enable = (sender as! UISwitch).isOn
        for key in self.servicesNumberedArray {
            self.services[key]!.isActive = enable
        }
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        self.navigationItem.rightBarButtonItem = self.editButtonItem

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.services = appDelegate.amazfitServices!.services
        self.servicesNumberedArray.removeAll()
        self.servicesNumberedArray.append(contentsOf: self.services.keys)
        
        for service in self.services {
            if service.value.isActive {
                self.switcher.setOn(true, animated: false)
                return
            }
        }
        self.switcher.setOn(false, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ServicesTableViewCell
        cell.isActive.setOn(!cell.isActive.isOn, animated: true)
        self.services[self.servicesNumberedArray[indexPath.row]]!.isActive = cell.isActive.isOn
        if switcher.isOn != cell.isActive.isOn {
            switchAll(switcher)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.servicesNumberedArray.count
    }

    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.addServices(services: self.services)
        appDelegate.amazfitServices!.syncWithDB()
        //self.services = appDelegate.amazfitServices!.services
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "serviceCell", for: indexPath) as! ServicesTableViewCell
        cell.name!.text = self.servicesNumberedArray[indexPath.row]
        cell.uuid!.text = self.services[self.servicesNumberedArray[indexPath.row]]!.value.uuidString
        let isActive = self.services[self.servicesNumberedArray[indexPath.row]]!.isActive
        cell.isActive.setOn(isActive, animated: false)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
