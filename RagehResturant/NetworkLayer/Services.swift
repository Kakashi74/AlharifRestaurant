//
//  Services.swift
//  Sallah
//
//  Created by Ahmed on 12/18/19.
//  Copyright © 2019 AhmedDev. All rights reserved.
//
import UIKit
import Alamofire
import SwiftyJSON

class Services {
    
    class func login(phone: String, password: String, callback: @escaping (LoginModel) -> Void, failureHandler: @escaping (Error) -> Void) {
        
        let url = URLs.loginURL
       let parameters = ["phone": phone, "password": password]
    
        Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: parameters, headers: nil, callBack: { (response: LoginModel) in
           
            callback(response)
            
       }) { (error) in
            
            failureHandler(error)
       }
        
    }
    
    
    class func registerForUser(name: String, phone: String, password: String, copassword: String,callback: @escaping (RegisterModel) -> Void, failureHandler: @escaping (Error) -> Void) {
       let url = URLs.registerURL
        let parameters = ["name": name, "phone": phone, "password": password ,"cpassword": copassword]
       

        Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: parameters, headers: nil, callBack: { (response: RegisterModel) in

          callback(response)

       }) { (error) in

            failureHandler(error)
        }
    }
    
    class func departments(callback: @escaping (DepartmentModel) -> Void , failureHandler: @escaping(Error) -> Void){
        
        let url = "https://sallaapp.xyz/api/departments"
        Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: nil, headers: nil, callBack: { (response: DepartmentModel) in
            callback(response)
           
        }) { (error) in
            failureHandler(error)
        }
    }
    
    
    class func departmentDetails(dep_id: Int , callback: @escaping (DepartmentModel) -> Void , failureHandler: @escaping(Error) -> Void){
           
        let url = URLs.deparDetailtURL
        let params: [String : Any] = ["id" : dep_id]
           Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: params, headers: nil, callBack: { (response: DepartmentModel) in
               callback(response)
              
           }) { (error) in
               failureHandler(error)
           }
       }
    
    class func search(title: String , callback: @escaping (DepartmentModel) -> Void , failureHandler: @escaping(Error) -> Void){
           
        let url = URLs.searchURL
        let params: [String : Any] = ["title" : title]
           Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: params, headers: nil, callBack: { (response: DepartmentModel) in
               callback(response)
              
           }) { (error) in
               failureHandler(error)
           }
       }
    
  
    
    
//    class func logoutForUser(user_id: Int , api_token: String ,callback: @escaping (LogOutModel) -> Void, failureHandler: @escaping (Error) -> Void ){
//
//
//        let url = URLs.logOutURL
//        let params: [String : Any] = ["user_id": user_id , "token": api_token]
//
//        Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: params, headers: nil, callBack: { (response : LogOutModel) in
//            callback(response)
//        }) { (error) in
//            failureHandler(error)
//        }
//    }

//    class func getAllUserTrip(callback: @escaping (AllTripModel) -> Void, failureHandler: @escaping (Error) -> Void ){
//        
//        let url = URLs.getUserTrip
//        
//        Service.request(url: url, dateFormate: nil, method: HTTPMethod.get, parameters: nil, headers: nil, callBack: { (response : AllTripModel) in
//            callback(response)
//        }) { (error) in
//            failureHandler(error)
//        }
//    }
//    
//    class func userBookTrip(user_id : Int , token: String , trip_id: Int , name: String , email: String , phone: String , adult: String , child: String , note: String, type: String , callback: @escaping (BookTripModel) -> Void, failureHandler: @escaping (Error) -> Void){
//        
//        let url = URLs.bookTripURL
//        let params : [String : Any] = ["user_id": user_id ,"token": token , "trip_id": trip_id , "name": name , "email" : email
//            , "mobile": phone , "adults" : adult , "child": child , "note" : note , "type": type ]
//        
//        Service.request(url: url, dateFormate: nil, method: HTTPMethod.post, parameters: params, headers: nil, callBack: { (response) in
//            callback(response)
//        }) { (error) in
//                failureHandler(error)
//        }
//    }
//    
//    
//    
//    
//    class func AllTripInfo(trip_id: Int ,  callback: @escaping (AllTripInfoModel) -> Void, failureHandler: @escaping (Error) -> Void){
//        
//     let url = "https://egypto-mania.com/api/user/information?\(trip_id)"
//        let params : [String : Any] = ["trip_id": trip_id]
//        
//        
//        Service.request(url: url, dateFormate: nil, method: HTTPMethod.get, parameters: params, headers: nil, callBack: { (response) in
//            callback(response)
//        }) { (error) in
//            failureHandler(error)
//        }
//        
//        
//    
//    }
//    
}
