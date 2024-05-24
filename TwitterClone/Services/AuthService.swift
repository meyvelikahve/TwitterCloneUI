//
//  AuthService.swift
//  TwitterClone
//
//  Created by Recep Sevim on 23.05.2024.
//

import Foundation
import SwiftUI

enum NetworkError : Error {
    case invalidURL
    case noData
    case decodingError
}

enum AuthError: Error{
    case invalidCredentials
    case custom(errorMessage: String)
}

public class AuthService {
    
    public static var requestDomain = ""
    
    static func login(email: String, password: String, completion: @escaping (_ result: Result<Data?, AuthError>) -> Void){
        print("login service")
        let url = URL(string: "http://localhost:3000/users/login")!
        
        makeRequest(url: url, reqBody: ["email":email, "password":password]) { result in
            print(result)
            switch result {
            case .success(let data):
                completion(.success(data!))
            case .failure(_):
                completion(.failure(.invalidCredentials))
            }
        }
    }
    
    static func register(name: String, email: String, username: String, password: String, completion: @escaping (_ result: Result<Data?, AuthError>) -> Void){
        let url = URL(string: "http://localhost:3000/users")!
        
        makeRequest(url: url, reqBody: ["name" : name, "email" : email, "username" : username, "password":password]) { result in
            switch result {
            case .success(let data):
                completion(.success(data))
            case .failure(_):
                completion(.failure(.invalidCredentials))
            }
            
        }
    }
    
    static func makeRequest(url: URL, reqBody: [String : Any], completion: @escaping (_ result: Result<Data?, NetworkError>) -> Void){
        
        print("request")
        let session = URLSession.shared
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        
        do{
            request.httpBody = try JSONSerialization.data(withJSONObject: reqBody, options: .prettyPrinted)
        }catch let error{
            print(error)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request){ data, result, error in
            guard error == nil else{
                completion(.failure(.noData))
                return
            }
            
            guard let data = data else{
                return
            }
            
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String : Any]{
                    print(json)
                }
            }catch let err {
                completion(.failure(.decodingError))
                print(err)
            }
        }
        
        task.resume()
    }
    
    static func fetchUser(id: String, completion: @escaping (_ result: Result<Data, AuthError>) -> Void){
        
        let session = URLSession.shared
        
        let url = URL(string: "http://localhost:3000/users\(id)")!
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request){ data, result, error in
            guard let err = error else{
                return
            }
            
            guard let data = data else{
                completion(.failure(.invalidCredentials))
                return
                
            }
            
            completion(.success(data))
            
            do{
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String : Any]{
                    print(json)
                }
            }catch let err {
                completion(.failure(.invalidCredentials))
                print(err)
            }
        }
        
        task.resume()
    }
}
