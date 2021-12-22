//
//  ContentView.swift
//  Swifty Weather
//
//  Created by Victor Loveday on 19/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Kano, NG")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 15) {
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("23°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 80)
                                
                HStack(spacing: 20) {
                    DaysView(dayOftheWeek: "TUE", imageName: "cloud.sun.rain.fill", temperature: 24)
                    
                    DaysView(dayOftheWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 16)
                    
                    DaysView(dayOftheWeek: "THU", imageName: "cloud.sun.rain.fill", temperature: 31)
                    
                    DaysView(dayOftheWeek: "FRI", imageName: "cloud.sun.rain.fill", temperature: 27)
                    
                    DaysView(dayOftheWeek: "SAT", imageName: "cloud.sun.rain.fill", temperature: 24)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DaysView: View {
    
    var dayOftheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 6) {
            Text(dayOftheWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
        }
    }
}
