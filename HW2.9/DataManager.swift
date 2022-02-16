//
//  DataManager.swift
//  HW2.9
//
//  Created by Vladyslav Haidaienko on 01.10.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}


