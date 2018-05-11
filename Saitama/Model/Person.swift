//
//  Person.swift
//  UrbaniaMVVM
//
//  Created by Erik Flores on 5/9/18.
//  Copyright © 2018 Orbis. All rights reserved.
//

import Foundation
import IGListKit

class Person: Decodable{
    let primaryKey: Int
    let name: String

    init(primaryKey: Int, name: String){
        self.primaryKey = primaryKey
        self.name = name
    }
}

extension Person: ListDiffable {

    func diffIdentifier() -> NSObjectProtocol {
        return primaryKey as NSObjectProtocol
    }

    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if self === object { return true }
        guard let object = object as? Person else { return false }
        return name == object.name
    }

}
