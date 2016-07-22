//
//  DetailViewController.swift
//  AddressBook
//
//  Created by Ahdab Nasir on 16/07/2016.
//  Copyright © 2016 Ahdab Nasir. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {
    
    var person = [NSManagedObject]()
    
   

    @IBOutlet weak var nameDisplay: UITextField!

    @IBOutlet weak var addressDisplay: UITextField!
    
    @IBOutlet weak var numberDisplay: UITextField!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            print(detail)
            if let label = self.nameDisplay {
                label.text = detail.valueForKey("name")!.description
            }
            if let label1 = self.addressDisplay {
                label1.text = detail.valueForKey("address")!.description
            }
            if let label2 = self.numberDisplay {
                label2.text = detail.valueForKey("number")!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

