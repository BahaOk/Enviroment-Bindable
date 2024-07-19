//
//  ContentView.swift
//  SwiftData
//
//  Created by Baha Ok on 18.07.2024.
//

import SwiftUI
import SwiftData

@Observable
class DarkEnable {
   
    var isEnable : Bool = false
}

struct DarkChoiseView : View {
   @Bindable var darkTheme : DarkEnable
    var body: some View {
        Toggle(isOn: $darkTheme.isEnable){
            EmptyView()
        }.fixedSize()
    }
}

struct DarkChoiseToggleView : View {
    @Environment(DarkEnable.self) private var darkTheme
    var body: some View {
        DarkChoiseView(darkTheme: darkTheme)
    }
}

struct  InformationText : View {
    @Environment(DarkEnable.self) private var darkTheme
    var body: some View {
        Text(darkTheme.isEnable ? "DarkTheme mood on" : "DarkTheme mood off")
            .font(.title2)
            .fontDesign(.rounded)
            .foregroundStyle(darkTheme.isEnable ? .white : .black)
        
    }
}

struct ContentView: View {
    @Environment(DarkEnable.self) private var darkTheme
    var body: some View {
        VStack{
            DarkChoiseToggleView()
            InformationText()
        }.frame(maxWidth: .infinity , maxHeight:.infinity)
            .background(darkTheme.isEnable ? .black : .white)
    }
    
    
}
#Preview {
    ContentView()
        .environment(DarkEnable())
}
