//
//  OnboardingView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import Foundation
import Combine

class EmployeeViewModel: ObservableObject {
    @Published var teamMembers: [Employee] = []
    @Published var isLoading = false
    @Published var errorText: String?
    
    private var subscriptions = Set<AnyCancellable>()
    
    init() {
        fetchTeamMembers()
    }
    
    func fetchTeamMembers() {
        guard let endpoint = URL(string: "https://s3.amazonaws.com/sq-mobile-interview/employees.json") else {
            errorText = "Invalid URL"
            return
        }
        
        isLoading = true
        
        URLSession.shared.dataTaskPublisher(for: endpoint)
            .map { $0.data }
            .decode(type: [String: [Employee]].self, decoder: JSONDecoder())
            .map { $0["employees"] ?? [] }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { result in
                self.isLoading = false
                if case .failure(let error) = result {
                    self.errorText = "Failed to fetch: \(error.localizedDescription)"
                }
            }, receiveValue: { data in
                self.teamMembers = data
            })
            .store(in: &subscriptions)
    }
}


