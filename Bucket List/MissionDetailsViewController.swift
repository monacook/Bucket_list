//
//  MissionDetailsViewController.swift
//  Bucket List
//
//  Created by Mona Cook on 5/11/16.
//  Copyright © 2016 Mona Cook. All rights reserved.
//

import UIKit

class MissionDetailsViewController:UITableViewController {
    
//    weak var cancelButtonDelegate: CancelButtonDelegate?
    @IBAction func cancelBarButtonPressed(sender: UIBarButtonItem) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
        
    }
    
    @IBAction func doneBarButtonPressed(sender: UIBarButtonItem) {
//        delegate?.missionDetailsViewController(self, didFinishAddingMission: newMissionTextField.text!)
        if var mission = missionToEdit {
            mission = newMissionTextField.text!
            delegate?.missionDetailsViewController(self, didFinishEditingMission: mission, atIndexPath: missionToEditIndexPath!)
        } else {
        // we are adding so run the "didFinishAddingMission" method
            let mission = newMissionTextField.text!
            delegate?.missionDetailsViewController(self, didFinishAddingMission: mission)
        }
    
    }
    
    @IBOutlet weak var newMissionTextField: UITextField!
    weak var delegate: MissionDetailsViewControllerDelegate?
    weak var cancelButtonDelegate: CancelButtonDelegate?
    var missionToEdit: String?
    var missionToEditIndexPath: Int?
}
