import Vapor

func routes(_ app: Application) throws {

    let posts = app.grouped("posts")
    
    // MARK: - Get
    posts.get { req async in
        [Post(title: "Post title", description: "Post description", date: Date())]
    }
    
    // MARK: - Post
    posts.post { req async throws in
        let post = try req.content.decode(Post.self)
        return post
    }
    
    // MARK: - Delete
}
