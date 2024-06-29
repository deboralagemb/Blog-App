import Vapor

func routes(_ app: Application) throws {

    let blogPosts = app.grouped("posts")
    
    // MARK: - Get
    blogPosts.get { req async in
        [BlogPost(title: "Post title", description: "Post description", date: Date())]
    }
    
    // MARK: - Post
    blogPosts.post { req async throws in
        let post = try req.content.decode(BlogPost.self)
        return post
    }
    
    // MARK: - Delete
}
