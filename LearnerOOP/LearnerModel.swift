//
//  LearnerModel.swift
//  LearnerOOP
//
//  Created by Annisa Nabila Nasution on 15/05/19.
//  Copyright © 2019 Annisa Nabila Nasution. All rights reserved.
//

import Foundation

class LearnerModel {
    var name: String
    var age: Int
    var gender: String
    var imageProfile: String
    
    init(nameLearner: String, ageLearner: Int, genderLearner: String, imageProfileLearner: String) {
        self.name = nameLearner
        self.age = ageLearner
        self.gender = genderLearner
        self.imageProfile = imageProfileLearner
    }
    
    func increaseAge(){
        self.age += 1
    }
}
