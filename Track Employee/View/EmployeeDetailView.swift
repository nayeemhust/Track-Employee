//
//  EmployeeDetailView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct EmployeeDetailView: View {
    let employee: Employee
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: employee.largePhoto ?? "")) { image in
                    image.resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                        .shadow(radius: 10)
                } placeholder: {
                    ProgressView()
                        .frame(height: 200)
                }
                .padding(.top)
                VStack(alignment: .center, spacing: 8) {
                    Text(employee.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 4)
                    
                    Text(employee.department)
                        .font(.title3)
                        .foregroundColor(.gray)
                }
                if let biography = employee.bio {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Biography")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(biography)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.top)
                }
                VStack(alignment: .leading, spacing: 12) {
                    if !employee.email.isEmpty {
                        HStack {
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.blue)
                            Text(employee.email)
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                    }
                    
                    if let phone = employee.contact, !phone.isEmpty {
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.green)
                            Text(phone)
                                .font(.body)
                                .foregroundColor(.primary)
                        }
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Role")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)
                    
                    Text(employee.role.rawValue.capitalized)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                .padding(.top)
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            .background(Color(UIColor.systemBackground))
        }
    }
}



