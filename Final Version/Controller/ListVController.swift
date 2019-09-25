//
//  ListVController.swift
//  Final Version
//
//  Created by Subhi Abusalem on 9/21/19.
//  Copyright © 2019 Subhi Abusalem. All rights reserved.
//

import UIKit

class ListVController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var Table1: UITableView!
    @IBOutlet weak var Table2: UITableView!
    
    
    
    let IssueServers : [String] = [("         MOBILENOC-FW.MOBILENOC.US"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA")]
    
    let ActiveServers : [String] = [("         MOBILENOC-FW.MOBILENOC.US.CA"),
("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA"),("         MOBILENOC-FW.MOBILENOC.US.CA")]
    
    
    var NumberOfIssues: Int = 0
    var NumberOfActives: Int = 0
    
    let CellIdintifier : String = "cell"

    
    override func viewDidLoad() {
        super.viewDidLoad()

        Table1.delegate = self
        Table2.delegate = self
        Table1.dataSource = self
        Table2.dataSource = self
    }
   
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.textLabel!.font = UIFont.systemFont(ofSize: 14.0)
            header.textLabel!.textColor = UIColor.black
    }
    
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
        if tableView.tag == 1 {
            NumberOfIssues = IssueServers.count
            return NumberOfIssues
            
        }
        
        else if tableView.tag == 2 {
            NumberOfActives = ActiveServers.count
            return NumberOfActives
            
        }
        
        else {
            
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdintifier, for: indexPath) as UITableViewCell
        
        if (tableView.tag == 1 ) {
            
            cell.textLabel?.text = IssueServers[indexPath.row]
            
        }
        
        else if (tableView.tag == 2 )  {
            
            
            
                
                cell.textLabel?.text = ActiveServers[indexPath.row]
            
            }
        
            
           return cell
        }

    
     final class Serverstodos {
     let title: String
    
     var isImportant: Bool
     var isFinished: Bool
     
     init(title: String) {
     self.title = title

     self.isImportant = false
     self.isFinished = false
     }
     }
     
     class TableViewController: UITableViewController {
     
     var Servers = [Serverstodos]()
     
     override func viewDidLoad() {
     super.viewDidLoad()
     
     for i in 1...10 {
     Servers.append(Serverstodos(title: "Server #\(i)"))
     }
     }
     
     // Mark: - Table view delegate
     
     override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
     let Drone = DroneAction (at: indexPath)
     let Router = RouterAction (at: indexPath)
     let Alert = AlertAction (at: indexPath)
     return UISwipeActionsConfiguration (actions: [Drone , Router , Alert ])
     }
     
     // MARK: - Table view data source
     func AlertAction (at IndexPath: IndexPath) -> UIContextualAction {
     
     let activedevices = Servers[IndexPath.row]
     let action = UIContextualAction (style: .normal, title: "Alert")
     { ( action ,View ,Completion ) in activedevices.isImportant = !activedevices.isImportant
     Completion(true)
     }

  //   action.image =  #imageLiteral(resourceName: "Alert") (resourceName: "Alarm")
   //  action.backgroundColor = .red
        
               // This function was working fine before i update my swift to 5.0 try to delete the comment and check if its working in your XCODE
        
        
     
     return action
     }
     
     
     func RouterAction (at IndexPath: IndexPath) -> UIContextualAction {
     
     let activedevices = Servers[IndexPath.row]
     let action = UIContextualAction (style: .normal, title: "Router")
     { ( action ,View ,Completion ) in activedevices.isImportant = !activedevices.isImportant
     Completion(true)
     }
     
  //   action.image =  #imageLiteral(resourceName: "router") ( resourceName: "Check")
  //   action.backgroundColor = .gray
     
        
        // This function was working fine before i update my swift to 5.0 try to delete the comment and check if its working in your XCODE
        
        
     return action
     }
     
     func DroneAction (at IndexPath: IndexPath) -> UIContextualAction {
     
     let activedevices = Servers[IndexPath.row]
     let action = UIContextualAction (style: .normal, title: "Drone")
     { ( action ,View ,Completion ) in activedevices.isImportant = !activedevices.isImportant
     Completion(true)
     }
     
    //  action.image = drone (resourceName: "Drone")
    // action.backgroundColor =  .blue
               // This function was working fine before i update my swift to 5.0 try to delete the comment and check if its working in your XCODE
     return action
     }
     
     
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     // #warning Incomplete implementation, return the number of rows
     return Servers.count
     }
     
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
     
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     
     
     // Configure the cell...
     let activedevices = Servers[indexPath.row]
     cell.textLabel?.text = activedevices.title
     
     return cell
     }
     }


    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    }


  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

