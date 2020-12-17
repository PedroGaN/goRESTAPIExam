//
//  NetworkManager.swift
//  GoRestTest
//
//  Created by Rodrigo Hernández Gómez on 17/12/2020.
//  Copyright © 2020 Rodrigo Hernández Gómez. All rights reserved.
//

import Foundation
import Alamofire

class Network {
    
    static var shared: Network = Network()
    
}


protocol GoRestAPI {
    
    func getUsers()
    
    func postUser()
    
    func patchUser()
    
    func putUser()
    
    func deleteUser()
    
    func getUsersAlamofire()
    
    func postUserAlamofire()
    
    func patchUserAlamofire()
    
    func putUserAlamofire()
    
    func deleteUserAlamofire()
    
}


extension Network: GoRestAPI {
    
    static let ACCESS_TOKEN = "1206788b567df794444d5cae3f14f932c2a5489c4d21d32ff745ec26416ed0c3"
    
    //TODO
    func getUsers() {

        let decoder = JSONDecoder.init()
        var httpRequest = URLRequest(url: URL(string: "https://gorest.co.in/public-api/users")!)
        
        httpRequest.httpMethod = "GET"

        httpRequest.addValue("application/json", forHTTPHeaderField: "Accept-Language")
        
        URLSession.shared.dataTask(with: httpRequest as URLRequest){
            data, response, error in
          if (error != nil) {
            print(error)
          } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
          }
        }.resume()
        
    }
    
    //TODO
    func postUser() {
        
        let headers = ["content-type": "application/json; charset=UTF-8","Authorization": Network.ACCESS_TOKEN]
        
        let encoder = JSONEncoder.init()
        let decoder = JSONDecoder.init()
        
        let newUser = User(name: "URLRequestUser", gender: "Male", email: "urlrequest@gmail.com", status:"Active")
        
        var httpRequest = URLRequest(url: URL(string: "https://gorest.co.in/public-api/users")!)
        
        httpRequest.httpMethod = "POST"
        do {
            httpRequest.httpBody = try! encoder.encode(newUser)
        }catch{
            print(error)
        }
        httpRequest.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: httpRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
          if (error != nil) {
            print(error)
          } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
            do {
                //httpRequest.httpBody = try! encoder.encode(newPostTest)
                let post = try! decoder.decode(User.self, from: data!)
                print(post)
            }catch{
                print(error)
            }

          }
        })

        dataTask.resume()
        
        
    }
    
    //TODO
    func patchUser() {
        let headers = ["content-type": "application/json; charset=UTF-8","Authorization": Network.ACCESS_TOKEN]
        
        let encoder = JSONEncoder.init()
        let decoder = JSONDecoder.init()
        
        let updateUser = User(name: "URLRequestPatchUser", gender: "Male", email: "", status:"Inactive")
        
        var httpRequest = URLRequest(url: URL(string: "https://gorest.co.in/public-api/users/123")!)
        
        httpRequest.httpMethod = "PATCH"
        do {
            httpRequest.httpBody = try! encoder.encode(updateUser)
        }catch{
            print(error)
        }
        httpRequest.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: httpRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
          if (error != nil) {
            print(error)
          } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
            do {
                //httpRequest.httpBody = try! encoder.encode(newPostTest)
                let post = try! decoder.decode(User.self, from: data!)
                print(post)
            }catch{
                print(error)
            }

          }
        })

        dataTask.resume()
    }
    
    //TODO
    func putUser() {
        let headers = ["content-type": "application/json; charset=UTF-8","Authorization": Network.ACCESS_TOKEN]
        
        let encoder = JSONEncoder.init()
        let decoder = JSONDecoder.init()
        
        let updateUser = User(name: "URLRequestPutUser", gender: "Male", email: "", status:"Inactive")
        
        var httpRequest = URLRequest(url: URL(string: "https://gorest.co.in/public-api/users/123")!)
        
        httpRequest.httpMethod = "PUT"
        do {
            httpRequest.httpBody = try! encoder.encode(updateUser)
        }catch{
            print(error)
        }
        httpRequest.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: httpRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
          if (error != nil) {
            print(error)
          } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
            do {
                //httpRequest.httpBody = try! encoder.encode(newPostTest)
                let post = try! decoder.decode(User.self, from: data!)
                print(post)
            }catch{
                print(error)
            }

          }
        })

        dataTask.resume()
    }
    
    //TODO
    func deleteUser() {
        let headers = ["content-type": "application/json; charset=UTF-8","Authorization": Network.ACCESS_TOKEN]
        
        var httpRequest = URLRequest(url: URL(string: "https://gorest.co.in/public-api/users/123")!)
        
        httpRequest.httpMethod = "DELETE"
        httpRequest.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: httpRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
          if (error != nil) {
            print(error)
          } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
          }
        })

        dataTask.resume()
    }
    
    //TODO
    func getUsersAlamofire() {
        
    }
    
    //TODO
    func postUserAlamofire() {
        
    }
    
    //TODO
    func patchUserAlamofire() {
        
    }
    
    //TODO
    func putUserAlamofire() {
        
    }
    
    //TODO
    func deleteUserAlamofire() {
        
    }
    
}
