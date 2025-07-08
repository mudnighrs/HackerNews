//
//  NetworkManger.swift
//  HackerNews
//
//  Created by Lakshaya Singh Tanwar on 06/07/25.
//

import Foundation
class NetworkManger{
    func fetchData(){
        if  let url =  URL(string:"http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let  decoder = JSONDecoder()
                }
            }
        }
    }
}
