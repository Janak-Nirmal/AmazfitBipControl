//
//  DiscoveryCharacteristicsTableViewController.swift
//  AmazfitBipControl
//
//  Created by Круцких Олег on 21.12.2017.
//  Copyright © 2017 Круцких Олег. All rights reserved.
//

import UIKit
import CoreBluetooth
import UserNotifications


class DiscoveryCharacteristicsTableViewController: UITableViewController, BluetoothDelegate, UNUserNotificationCenterDelegate {
    var service: CBService?
    var characteristics = [CBCharacteristic]()
    fileprivate let bluetoothManager = BluetoothManager.getInstance()
    var activityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAll()
        UNUserNotificationCenter.current().delegate = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func initAll(){
        self.bluetoothManager.bluetoothDelegate = self
        self.tableView.refreshControl = UIRefreshControl()
        self.tableView.refreshControl!.addTarget(self, action: #selector(DiscoveryCharacteristicsTableViewController.handleRefresh(_:)), for: UIControlEvents.valueChanged)
        self.tableView.refreshControl!.tintColor = UIColor.blue
    }
    
    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        if self.service != nil {
            self.bluetoothManager.services = [self.service!]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        willTableLoadStart()
    }
    
    func willTableLoadStart() {
        self.tableView.backgroundView = activityIndicatorView
        let dispatchQueue = DispatchQueue(label: "Dispatch Queue", attributes: [], target: nil)
        self.tableView.separatorStyle = .none
        self.activityIndicatorView.startAnimating()
        dispatchQueue.async {
//            Thread.sleep(forTimeInterval: 3)
            OperationQueue.main.addOperation() {
                if self.service != nil {
                    self.bluetoothManager.services = [self.service!]
                }
            }
        }
    }
    
    func didTableLoadEnded() {
        tableView.reloadData()
        if !self.tableView.refreshControl!.isRefreshing {
            Utils.log("didTableLoadEnded", from: classForCoder, args: ["load": "first"])
            self.tableView.separatorStyle = .singleLine
            self.activityIndicatorView.stopAnimating()
        } else {
            Utils.log("didTableLoadEnded", from: classForCoder, args: ["load": "second"])
            tableView.refreshControl!.endRefreshing()
        }
    }
    
    
    func didDiscoverCharacteritics(_ service: CBService) {
        Utils.log("didDiscoverCharacteritics", from: classForCoder, args: ["service": service])
        if let chars = service.characteristics {
            self.characteristics.removeAll()
            self.characteristics += chars

        }
        didTableLoadEnded()
    }
    
//    func didDiscoverServices(_ peripheral: CBPeripheral) {
//        Utils.log("didDiscoverServices", from: classForCoder, args: ["device": peripheral])
//        if let srvs = peripheral.services {
//            self.services.removeAll()
//            self.services += srvs
//        }
//        tableView.reloadData()
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.characteristics.count
    }    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ServicesTableViewCell
        self.service!.peripheral.discoverDescriptors(for: cell.characteristic!)
        self.service!.peripheral.readValue(for: cell.characteristic!)
        self.bluetoothManager.peripferal!.setNotifyValue(true, for: cell.characteristic!)
    }
    
    func didDiscoverDescriptors(_ characteristic: CBCharacteristic) {
        Utils.log("didDiscoverDescriptors event", from: classForCoder, args: ["characteristic": characteristic, "value": characteristic.descriptors])
        if let descriptors = characteristic.descriptors {
            for descr in descriptors {
                print("descriptor: \(descr.uuid.uuidString)")
                
            }
        }
    }
    
    func didReadValueForCharacteristic(_ characteristic: CBCharacteristic) {
        if characteristic.value != nil && characteristic.value!.count != 0 {
            switch characteristic.uuid {
                case GattCharacteristics.UUID_CHARACTERISTIC_7_REALTIME_STEPS.cbuuid:
                    let steps = AmazfitNotifyReaderSupport.readStepsValue(data: characteristic.value)
                    Utils.letsNotify(message: "Current steps value: \(steps)", value: 0)
                case GattCharacteristics.UUID_CHARACTERISTIC_6_BATTERY_INFO.cbuuid:
                    let batt = AmazfitNotifyReaderSupport.readBatteryLevel(data: characteristic.value)
                    Utils.letsNotify(message: "Current battery level: \(batt)", value: 0)
                case GattCharacteristics.UUID_CHARACTERISTIC_DEVICEEVENT.cbuuid:
                    let event = AmazfitNotifyReaderSupport.readDeviceEvent(data: characteristic.value)
                    Utils.letsNotify(message: "Current event: \(event)", value: 0)
                default:
                    Utils.log("didReadValueForCharacteristic event", from: classForCoder, args: ["characteristic": characteristic, "value": String.init(data: characteristic.value!, encoding: String.Encoding.utf8)])
            }
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        //completionHandler([.alert, .sound])
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characteristicCell", for: indexPath) as! ServicesTableViewCell
        cell.name!.text = self.characteristics[indexPath.row].uuid.uuidString
        if let c = GattCharacteristics(rawValue: self.characteristics[indexPath.row].uuid.uuidString) {
            cell.name!.text = c.description
        }
        cell.uuid!.text = self.characteristics[indexPath.row].uuid.uuidString
        cell.characteristic = self.characteristics[indexPath.row]
        //        let isActive = self.services[indexPath.row].isActive
        //      cell.isActive.setOn(isActive, animated: false)
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

