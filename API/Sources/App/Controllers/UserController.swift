//
//  UserController.swift
//
//
//  Created by Débora Lage on 10/07/24.
//

import Foundation
import Vapor

struct UserController: RouteCollection {
    func boot(routes: any Vapor.RoutesBuilder) throws {
        let users = routes.grouped("users")
        
        users.get(use: index)
        
        users.post(use: create)
        
        users.group(":userId") { user in
            user.get(use: show)
        }
    }
    
    
    // MARK: - Users
    func index(req: Request) throws -> String {
        return "Index"
    }
    
    func create(req: Request) throws -> String {
        return "Create"
    }
    
    func show(req: Request) throws -> String {
        guard let userId = req.parameters.get("userId") as String? else {
            throw Abort(.badRequest)
        }
        
        return "\(userId)"
    }
}
