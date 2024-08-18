//
//  OnboardingView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct ContentView: View {
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding = false
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    
    var body: some View {
        Group {
            if hasSeenOnboarding {
                TabView {
                    EmployeeListView()
                        .tabItem {
                            Label("Team", systemImage: "person.3.fill")
                        }
                    SettingsView()
                        .tabItem {
                            Label("Preferences", systemImage: "gearshape")
                        }
                }
            } else {
                OnboardingView(showOnboarding: $hasSeenOnboarding)
            }
        }
        .environment(\.colorScheme, darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
