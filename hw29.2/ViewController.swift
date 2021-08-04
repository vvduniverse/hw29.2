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
    
    private let animations = Animation.getAnimationList()
    
    private var caseIndex = 0
    private var buttonIndex = 1

    @IBAction func annimationTypeButton(_ sender: SpringButton) {
        if caseIndex < animations.count {
            animationInfoShow.animation = animations[caseIndex].type
            animationInfoShow.text = "type: " + animations[caseIndex].type + ", curve: " + animations[caseIndex].curve
            sender.setTitle(animations[buttonIndex].type, for: .normal)
            animationInfoShow.duration = CGFloat(animations[caseIndex].duration)
            animationInfoShow.curve = animations[caseIndex].curve
            animationInfoShow.animate()
            caseIndex += 1
        } else { return }
        
        if buttonIndex < animations.count - 1 {
            buttonIndex += 1
        } else { return }
//            caseIndex = 0
//            buttonIndex = 1
// или так, тогда перебор продолжится по кругу
        
    }    
}

/* без модели даных, выглядит все гораздо проще....
 import Spring

 class ViewController: UIViewController {

     @IBOutlet weak var animationInfoShow: SpringLabel!
     @IBOutlet weak var annimationTypeButtonOutlet: SpringButton!
     
     private var caseIndex = 0
     private var buttonIndex = 1
     private var curveIndex = 0

     @IBAction func annimationTypeButton(_ sender: SpringButton) {
             
         if caseIndex < Spring.AnimationPreset.allCases.count {
             animationInfoShow.animation = Spring.AnimationPreset.allCases[caseIndex].rawValue
             animationInfoShow.text = Spring.AnimationPreset.allCases[caseIndex].rawValue
             sender.setTitle(Spring.AnimationPreset.allCases[buttonIndex].rawValue, for: .normal)
             animationInfoShow.duration = 2.0
             animationInfoShow.curve = Spring.AnimationCurve.allCases[curveIndex].rawValue
             animationInfoShow.animate()
             caseIndex += 1
             curveIndex += 1
         } else { return }
         
         if buttonIndex < Spring.AnimationPreset.allCases.count - 1 {
             buttonIndex += 1
         } else { return }
 //            caseIndex = 0
 //            buttonIndex = 1
 // или так, тогда перебор продолжится по кругу
         
     }
 }

 */
