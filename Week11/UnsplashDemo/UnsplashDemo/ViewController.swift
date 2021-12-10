//
//  ViewController.swift
//  UnsplashDemo
//
//  Created by lee bennett on 11/1/21.
//

import UIKit
import Kingfisher

// URLSessionDataTask -> Takes a URLRequest and executes it
// URLRequest -> HTTP verb (e.g. GET), URL (api.unsplash.com/photos/random)
// URL -> scheme (e.g. https) domain (e.g. api.unsplash.com)
// String -> Put the endpoint and path of the request

struct Image: Codable {
    let id: String
    let width: Int
    let height: Int
    let color: String
    let urls: ImageUrl
}

struct ImageUrl: Codable  {
    let raw: String
    let full: String
    let regular: String
    let small: String
    let thumb: String
}


class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var request = URLRequest(url: url)
        request.addValue("Client-ID IooWooh9kNYhIYPuJ9zI1cywtAr0gQZfJTrN4MQtBcc", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            // Use the Codable API to turn binary data (Data) into our custom Swift structures
            if let data = data{
                let decoder = JSONDecoder()
                let image = try! decoder.decode(Image.self, from: data)
                print("image id \(image.id)")
                print("image id \(image.urls)")
                
                let imageUrl = URL(string: image.urls.regular)!
                self.mainImageView.kf.setImage(with: imageUrl)

            }
            
            
        }.resume()
        
        
    }


}

