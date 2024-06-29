//
//  Post.swift
//
//
//  Created by Débora Lage on 29/06/24.
//

import Foundation
import Vapor

struct Post: Content {
    let title: String
    let description: String
    let date: Date
}
