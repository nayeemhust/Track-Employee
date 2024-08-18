//
//  EmployeeListView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import SwiftUI

struct EmployeeListView: View {
    @ObservedObject var viewModel = EmployeeViewModel()
    @State private var searchQuery = ""

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading team...")
                } else if let errorText = viewModel.errorText {
                    Text(errorText)
                        .foregroundColor(.red)
                } else if viewModel.teamMembers.isEmpty {
                    Text("No team members found.")
                        .foregroundColor(.gray)
                } else {
                    List {
                        ForEach(viewModel.filteredTeamMembers(searchQuery: searchQuery)) { member in
                            NavigationLink(destination: EmployeeDetailView(employee: member)) {
                                EmployeeRowView(employee: member)
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("Team Members")
                    .searchable(text: $searchQuery)
                    .refreshable {
                        viewModel.fetchTeamMembers()
                    }
                }
            }
        }
    }
}

extension EmployeeViewModel {
    func filteredTeamMembers(searchQuery: String) -> [Employee] {
        teamMembers.filter {
            searchQuery.isEmpty || $0.name.lowercased().contains(searchQuery.lowercased())
        }
    }
}



