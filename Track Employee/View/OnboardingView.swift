//
//  OnboardingView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    @State private var currentPage = 0
    @State private var animate = false
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                VStack {
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .foregroundColor(.blue)
                        .scaleEffect(animate ? 1.2 : 1.0)
                        .animation(
                            Animation.interpolatingSpring(stiffness: 50, damping: 5)
                                .repeatForever(autoreverses: true),
                            value: animate
                        )
                    Text("Welcome to Track Employee")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .tag(0)
                .padding(.bottom, 40)
                .onAppear { animate = true }
                .onDisappear { animate = false }
                
                VStack {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .foregroundColor(.green)
                        .scaleEffect(animate ? 1.2 : 1.0)
                        .animation(
                            Animation.interpolatingSpring(stiffness: 50, damping: 5)
                                .repeatForever(autoreverses: true),
                            value: animate
                        )
                    Text("Search Employees Easily")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .tag(1)
                .padding(.bottom, 40)
                .onAppear { animate = true }
                .onDisappear { animate = false }
                
                VStack {
                    Image(systemName: "bell.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .foregroundColor(.orange)
                        .scaleEffect(animate ? 1.2 : 1.0)
                        .animation(
                            Animation.interpolatingSpring(stiffness: 50, damping: 5)
                                .repeatForever(autoreverses: true),
                            value: animate
                        )
                    Text("Get Notified")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .tag(2)
                .padding(.bottom, 40)
                .onAppear { animate = true }
                .onDisappear { animate = false }
                
                VStack {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .foregroundColor(.purple)
                        .scaleEffect(animate ? 1.2 : 1.0)
                        .animation(
                            Animation.interpolatingSpring(stiffness: 50, damping: 5)
                                .repeatForever(autoreverses: true),
                            value: animate
                        )
                    Text("Ready to Start?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Button("Start Now") {
                        showOnboarding = false
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 20)
                }
                .tag(3)
                .padding(.bottom, 40)
                .onAppear { animate = true }
                .onDisappear { animate = false }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .padding()
    }
}







