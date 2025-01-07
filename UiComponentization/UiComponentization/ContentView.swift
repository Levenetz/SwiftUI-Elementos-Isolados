//
//  ContentView.swift
//  UiComponentization
//
//  Created by Victor Levenetz Mariano on 13/09/24.
//

import SwiftUI
import CoreMotion

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    @State private var toggleValue: Bool = false
    @State private var sliderValue: Double = 0.5
    @State private var selectedIndex: Int = 0
    
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var body: some View {
        ZStack{
            if toggleValue {
                Image("backgroundImage")
                    .ignoresSafeArea()
            }else{
                Image("backgroundImageDay")
                    .ignoresSafeArea()
            }
            
            VStack(spacing: 15) {
                
                Text("Isolando Elementos")
                    .font(.custom("Noteworthy", size: 45))
                
                    .foregroundStyle(.white)
                    .italic()
                    .padding()
                    .cornerRadius(10)
                
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .padding()
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear(duration: 1), value: rotation)
                
                Button(action: {
                    rotation += 360
                }) {
                    Text("Click")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
                
                Toggle(isOn: $toggleValue) {
                    if toggleValue == false{
                        Text("Time Controll")
                            .frame(width: 200,height: 40)
                            .font(.title2)
                            .offset(x: -30, y: 0)
                    }
                    else{
                        Text("Time Controll")
                            .frame(width: 200,height: 40)
                            .font(.title2)
                            .foregroundColor(.white)
                            .offset(x: -33, y: 0)
                    }
                }
                
                .offset(x: 0, y: 20)
                .padding()
                
                Slider(value: $sliderValue, in: 0...3.14)
                    .padding()
                    .offset(x: 0, y: 20)
                
                Text("π \(sliderValue, specifier: "%.2f")")
                    .font(.custom("Noteworthy", size: 30))
                
                    .foregroundStyle(.white)
                    .italic() // Também pode aplicar itálico
                    .padding()
                    .cornerRadius(10)
                
                Picker(selection: $selectedIndex, label: Text("Select an item")) {
                    ForEach(0..<items.count, id: \.self) { index in
                        Text(items[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
            }
            .padding(100)
        }
        
    }
}




#Preview {
    ContentView()
}
