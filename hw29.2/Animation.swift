//
//  Animation.swift
//  hw29.2
//
//  Created by Vahtee Boo on 04.08.2021.
//

import Foundation

struct Animation {
    
    let type: String
    let curve: String
    let duration: Double
    
}

extension Animation {
    static func getAnimationList() -> [Animation] {
        
        var animations: [Animation] = []
        
        let types = DataManager.shared.animations
        let curves = DataManager.shared.curves
        let durations = DataManager.shared.duration
        
        let iterationCount = DataManager.shared.animations.count
        
        for index in 0..<iterationCount {            
            let animation = Animation(
                type: types[index],
                curve: curves.randomElement()!,
                duration: durations.randomElement()!
                //осознанно ставлю !, так как знаю, что данные есть :) могу и безопасно ивзлечь, если надо в данном случае
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}
