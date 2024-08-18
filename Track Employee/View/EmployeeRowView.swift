//
//  EmployeeRowView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct EmployeeRowView: View {
    let employee: Employee
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: employee.smallPhoto ?? "")) { image in
                image.resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            } placeholder: {
                ProgressView()
                    .frame(width: 50, height: 50)
            }
            VStack(alignment: .leading) {
                Text(employee.name)
                    .font(.headline)
                Text(employee.department)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 4)
    }
}


