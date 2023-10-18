//
//  ContentViewModel.swift
//  Swift_POP
//
//  Created by Carki on 2023/10/18.
//

import Foundation

final class ContentViewModel: ObservableObject {
    //Circle
    @Published var circleRadius = SampleCircle().radius
    @Published var pi = Double.pi
    
    //Rectangle
    @Published var rectangleWidth = SampleRectangle().width
    @Published var rectangleHeight = SampleRectangle().height
}
