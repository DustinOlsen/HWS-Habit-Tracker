//
//  ContentView.swift
//  Shared
//
//  Created by Dustin Olsen on 2/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var displayableActivities = HabitData()
    
    @State private var showingNewHabit = false
    
    var body: some View {
        VStack {
            
            Button(action: {
                self.showingNewHabit = true
            }) {
                Image(systemName: "plus")
            }
            .sheet(isPresented: $showingNewHabit) {
                AddHabit(habits: HabitData())
            }
            
            ForEach(displayableActivities.habitList)  { habit in
                Text(habit.habitName)
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
