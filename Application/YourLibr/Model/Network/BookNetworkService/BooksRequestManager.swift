//
//  BooksRequestManager.swift
//  YourLibr
//
//  Created by user166683 on 5/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

struct BooksRequestManager{
    private let baseURL = "https://www.goodreads.com/api/keys"
    private let devKey = "uazU2CVUWfsdF5suxa5pw"
    private let secret = "QRgZLebA7a5Wius91zmEiIHxbVL9eMQDCidnhncn0o"
    
    
    
    func SearchBook(for requestInfo: String) -> [Book]{
        let session = URLSession.shared
        let url = URL(string: "https://learnappmaking.com/ex/users.json")!
        _ = session.dataTask(with: url) { data, response, error in
            if let data = data{
                print(data)
            }
            if let response = response{
                print(response)
            }
            if let error = error{
                print(error)
            }
        }
        return []
    }
}
