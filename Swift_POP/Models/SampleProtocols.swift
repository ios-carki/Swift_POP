//
//  SampleProtocols.swift
//  Swift_POP
//
//  Created by Carki on 2023/10/18.
//

import Foundation

protocol Shape {
    var size: Double { get }
    func describe() -> String
}

//원형
struct SampleCircle: Shape {
    //반지름
    var radius: Double = 50
    
    ///원의 크기
    ///파이 * 반지름 * 반지름
    var size: Double {
        return Double.pi * radius * radius
    }
    
    func describe() -> String {
        return "This is a circle with radius \(radius) and size \(size)"
    }
    
}

//사각형
struct SampleRectangle: Shape {
    var width: Double = 100
    var height: Double = 100
    
    var size: Double {
        return width * height
    }
    
    func describe() -> String {
        return "This is a rectangle with width \(width), height \(height), and size \(size)"
    }
    
    
}
