//
//  Animate.swift
//  SwitchAnimate
//
//  Created by Тимур on 05.04.2022.
//

struct Animate {
    let preset: String
    let curve: String
    let focre: Float
    let duration: Float
    let delay: Float
    
    static func getAnimate() -> Animate {
        let presets = [
            "shake",
            "pop",
            "morph",
            "squeeze",
            "wobble",
            "swing",
            "flipX",
            "flipY",
            "fall",
            "squeezeLeft",
            "squeezeRight",
            "squeezeDown",
            "squeezeUp",
            "slideLeft",
            "slideRight",
            "slideDown",
            "slideUp",
            "fadeIn",
            "fadeOut",
            "fadeInLeft",
            "fadeInRight",
            "fadeInDown",
            "fadeInUp",
            "zoomIn",
            "zoomOut",
            "flash"
        ]
        let curves = [
            "spring",
            "linear",
            "easeIn",
            "easeOut",
            "easeInOut",
        ]
        
        let animate = Animate(
            preset: presets.randomElement() ?? "shake",
            curve: curves.randomElement() ?? "spring",
            focre: Float.random(in: 0.5...2),
            duration: Float.random(in: 1.5...3),
            delay: Float.random(in: 0.5...1.5)
        )
        
        return animate
    }
}
