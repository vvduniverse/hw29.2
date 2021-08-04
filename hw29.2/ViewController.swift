//
//  ViewController.swift
//  hw29.2
//
//  Created by Vahtee Boo on 04.08.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationInfoShow: SpringLabel!
    @IBOutlet weak var annimationTypeButtonOutlet: SpringButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        casesIteration()

    }
    
    private var caseIndex = 0
    private var buttonIndex = 1

    @IBAction func annimationTypeButton(_ sender: SpringButton) {
        
        if caseIndex < Spring.AnimationPreset.allCases.count {
            animationInfoShow.animation = Spring.AnimationPreset.allCases[caseIndex].rawValue
            animationInfoShow.text = Spring.AnimationPreset.allCases[caseIndex].rawValue
            sender.setTitle(Spring.AnimationPreset.allCases[buttonIndex].rawValue, for: .normal)
            animationInfoShow.duration = 2.0
            animationInfoShow.animate()
            caseIndex += 1
        } else { return }
        
        if buttonIndex < Spring.AnimationPreset.allCases.count - 1 {
            buttonIndex += 1
        } else {
            caseIndex = 0
            buttonIndex = 1
            // или return, тогда перебор закончится
        }
    }
    
    func casesIteration() {
        for animationType in Spring.AnimationPreset.allCases {
            print(animationType)
            
        }
    }
    
    
}

