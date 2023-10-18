//
//  ContentView.swift
//  Swift_POP
//
//  Created by Carki on 2023/10/18.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    var body: some View {
        VStack(spacing: 30) {
            VStack(alignment: .center, spacing: 20) {
                Circle()
                    .fill(LinearGradient(colors: [.black, .blue.opacity(0.3)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: viewModel.circleRadius * 2, height: viewModel.circleRadius * 2)
                Text(SampleCircle().describe())
                    .fontWeight(.heavy)
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 1)
                
                Text("And")
                    .fontWeight(.semibold)
                    .frame(width:80)
                    .background(Color.white)
            }
            
            VStack(alignment: .center, spacing: 20) {
                Rectangle()
                    .fill(LinearGradient(colors: [.blue.opacity(0.6), .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: viewModel.rectangleWidth, height: viewModel.rectangleHeight)
                Text(SampleRectangle().describe())
                    .fontWeight(.heavy)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
