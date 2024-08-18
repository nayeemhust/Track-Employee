//
//  OnboardingView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

@main
struct Track_EmployeeAppApp: App {
    @State private var showOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView(showOnboarding: $showOnboarding)
            } else {
                ContentView()
            }
        }
    }
}

