//
//  ContentView.swift
//  Swifty Weather
//
//  Created by Victor Loveday on 19/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDay = true
    
    var body: some View {
        ZStack {
            BackgroundView(startColor: isDay ? .blue : .black, endColor: isDay ? Color("lightBlue") : .gray)
            
            VStack {
                CityTextView(cityName: "Kano, NG")
                
                VStack(spacing: 15) {
                    CurrentWeather(weatherIcon: "sun.max.fill", temperature: 35)
                }
                .padding(.bottom, 80)
                                
                HStack(spacing: 20) {
                    DaysView(dayOftheWeek: "TUE", weatherIcon: "cloud.sun.rain.fill", temperature: 24)
                    
                    DaysView(dayOftheWeek: "WED", weatherIcon: "cloud.sun.rain.fill", temperature: 16)
                    
                    DaysView(dayOftheWeek: "THU", weatherIcon: "cloud.sun.rain.fill", temperature: 31)
                    
                    DaysView(dayOftheWeek: "FRI", weatherIcon: "cloud.sun.rain.fill", temperature: 27)
                    
                    DaysView(dayOftheWeek: "SAT", weatherIcon: "cloud.sun.rain.fill", temperature: 24)
                }
                
                Spacer()
                
                Button {
//                    print("tapped")
                    isDay.toggle()
                } label: {
                    PrimaryButton(buttonLabel: "Change Day Time", textColor: .blue, backgroundColor: .white, cornerRadius: 10)
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
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 6) {
            Text(dayOftheWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: weatherIcon)
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

struct BackgroundView: View {
    
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CurrentWeather: View {
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        Image(systemName: weatherIcon)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
    }
}
