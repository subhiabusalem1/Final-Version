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
            header.textLabel!.font = UIFont.systemFont(ofSize: 15.0)
            header.textLabel!.textColor = UIColor.orange
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

