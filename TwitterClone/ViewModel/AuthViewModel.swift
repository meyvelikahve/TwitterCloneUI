//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Recep Sevim on 21.05.2024.
//

import SwiftUI

class AuthViewModel: ObservableObject{
    
    @Published var isAuthenticated: Bool = false
    @Published var currentUser: UserModel?
    
    init() {
        let defaults = UserDefaults.standard
        let token = defaults.object(forKey: "jsonwebtoken")
        
        if token != nil {
            isAuthenticated = true
            
            if let userId = defaults.object(forKey: "userid"){
                fetchUser(userId: userId as! String)
                print("User Fetched")
            }
        }
        else {
            isAuthenticated = false
        }
    }
    
    static let shared = AuthViewModel()
    
    func login(email: String, password: String){
        
        let defaults = UserDefaults.standard
        
        print("login view model")
        
        AuthService.login(email: email, password: password) { result in
            print(result)
            switch result {
            
            case .success(let data):
                guard let user = try? JSONDecoder().decode(ApiResponse.self, from: data!) else {
                    return
                }
                
                DispatchQueue.main.async {
                    defaults.set(user.token, forKey: "jsonwebtoken")
                    defaults.set(user.user.id, forKey: "userid")
                    self.isAuthenticated = true
                    self.currentUser = user.user
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            
            }
        }
    }
    
    func register(name: String, username: String, email: String, password: String){
        AuthService.register(name: name, email: email, username: username, password: password) { result in
            switch result {
            case .success(let data):
                guard (try? JSONDecoder().decode(ApiResponse.self, from: data!)) != nil else {
                    return
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
    
    func fetchUser(userId: String){
        AuthService.fetchUser(id: userId) { result in
            switch result {
            case .success(let data):
                guard let user = try? JSONDecoder().decode(UserModel.self, from: data) else {return}
                
                DispatchQueue.main.async{
                    UserDefaults.standard.setValue(user.id, forKey: "userid")
                    self.isAuthenticated = true
                    self.currentUser = user
                }
            case .failure(let error):
                            print(error.localizedDescription)
            }
        }
    }
    
    func logout(){
        let defaults = UserDefaults.standard
        let dictonary = defaults.dictionaryRepresentation()
        
        dictonary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
        
        DispatchQueue.main.async {
            self.isAuthenticated = false
        }
    }
}
