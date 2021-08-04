//
//  DataModel.swift
//  hw29.2
//
//  Created by Vahtee Boo on 04.08.2021.
//

import Spring

class DataManager {

    static let shared = DataManager()
    
    let animations = [
        "slideLeft", "slideRight", "slideDown", "slideUp", "squeezeLeft",
        "squeezeRight", "squeezeDown", "squeezeUp", "fadeIn", "fadeOut",
        "fadeOutIn", "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
        "zoomIn", "zoomOut", "fall", "shake", "pop", "flipX", "flipY",
        "morph", "squeeze", "flash", "wobble", "swing"
    ]
    
    let curves = [
        "easeIn", "easeOut", "easeInOut", "linear", "spring", "easeInSine",
        "easeOutSine", "easeInOutSine", "easeInQuad", "easeOutQuad", "easeInOutQuad",
        "easeInCubic", "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart",
        "easeInOutQuart", "easeInQuint", "easeOutQuint", "easeInOutQuint", "easeInExpo",
        "easeOutExpo", "easeInOutExpo", "easeInCirc", "easeOutCirc", "easeInOutCirc",
        "easeInBack", "easeOutBack", "easeInOutBack"
    ]
    
    let duration = [
        0.5, 1.0, 1.5, 2.0, 2.5
    ]
    private init() {}
}

