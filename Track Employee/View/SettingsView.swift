//
//  SettingsView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct SettingsView: View {
    @AppStorage("notificationsEnabled") private var notificationsEnabled = true
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    
    var body: some View {
        Form {
            Section(header: Text("Application Info")) {
                Text("Developer: Nazmul Alam Nayeem")
                Text("Student ID: 1152486")
            }
            Section(header: Text("Settings")) {
                Toggle("Enable Notifications", isOn: $notificationsEnabled)
                Toggle("Dark Mode", isOn: $darkModeEnabled)
            }
            Section(header: Text("Support")) {
                Link("Visit Website", destination: URL(string: "https://www.linkedin.com/in/nazmulnayeem/")!)
            }
        }
        .navigationTitle("Preferences")
    }
}





