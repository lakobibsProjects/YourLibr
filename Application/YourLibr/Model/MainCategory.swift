//
//  MainCategories.swift
//  YourLibrarium
//
//  Created by user166683 on 5/16/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import Foundation

public struct MainCategory: Identifiable{
    let value: String
    public let id: UUID = UUID()
    init(value: String){
        self.value = value
    }
}
