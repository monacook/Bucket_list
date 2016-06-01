//
//  Missiondetailviewcontrollerdelegate.swift
//  Bucket List
//
//  Created by Mona Cook on 5/11/16.
//  Copyright © 2016 Mona Cook. All rights reserved.
//

import Foundation
protocol MissionDetailsViewControllerDelegate: class {
    func missionDetailsViewController(controller: MissionDetailsViewController, didFinishAddingMission mission: String)
    func missionDetailsViewController(controller: MissionDetailsViewController, didFinishEditingMission mission: String, atIndexPath indexPath: Int)
    
    
}


