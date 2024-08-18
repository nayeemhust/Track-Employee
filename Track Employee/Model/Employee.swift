//
//  OnboardingView.swift
//  Track Employee
//  Created by Nazmul Alam Nayeem on 2024-08-14.

import Foundation

struct Employee: Identifiable, Codable {
    var id: String { uuid }
    let uuid: String
    let name: String
    let contact: String?
    let email: String
    let bio: String?
    let smallPhoto: String?
    let largePhoto: String?
    let department: String
    let role: EmployeeType
    
    enum CodingKeys: String, CodingKey {
        case uuid, name = "full_name", contact = "phone_number", email = "email_address", bio = "biography", smallPhoto = "photo_url_small", largePhoto = "photo_url_large", department = "team", role = "employee_type"
    }
}



