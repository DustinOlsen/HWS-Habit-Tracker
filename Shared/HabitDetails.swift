//
//  HabitDetails.swift
//  HWS Habit Tracker
//
//  Created by Dustin Olsen on 2/5/21.
//

import SwiftUI

struct HabitDetails: View {
    
    @ObservedObject var habits: HabitData
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct HabitDetails_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetails(habits: HabitData())
    }
}
