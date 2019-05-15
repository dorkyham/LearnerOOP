//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Annisa Nabila Nasution on 15/05/19.
//  Copyright © 2019 Annisa Nabila Nasution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    
    @IBOutlet weak var learnerAgeLabel: UILabel!
    
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance : LearnerModel? //ini buat sebuah object dari class LearnerModel
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel.init(nameLearner: "Annisa Nabila Nasution", ageLearner: 19, genderLearner: "Other", imageProfileLearner: "")
        
            updateUI()
    }

    func updateUI(){
        //unwrap optional biar ilangin tanda tanya
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            
            learnerAgeLabel.text = "\(instance.age)"
            
            learnerGenderLabel.text = instance.gender
        }
        
    }
    
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance{
            instance.increaseAge()
        }
        updateUI()
    }
}

