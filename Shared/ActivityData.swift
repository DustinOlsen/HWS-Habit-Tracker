//
//  ActivityData.swift
//  HWS Habit Tracker
//
//  Created by Dustin Olsen on 2/4/21.
//

import Foundation

struct TrackedHabits:Identifiable {
    let id = UUID()
    var habitName: String
    var habitDescription: String
    var habitCount: Int
}

class HabitData:ObservableObject {
    @Published var habitList = [TrackedHabits]()
    
//    {
//        let encoder = JSONEncoder()
//        if let encoded = try? encoder.encode() {
//            self.habits = decoded
//            return
//        }
//    }
//    self.habits = []
}
