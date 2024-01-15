import Foundation

class ApiCall {
  static func getPhotos(completion: @escaping ([Photo]) -> Void) {
    let getPhotosUrlString = "https://jsonplaceholder.typicode.com/photos"
    
    guard let url = URL(string: getPhotosUrlString) else { return }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      if let data = data,
         let photos = try? JSONDecoder().decode([Photo].self, from: data) {
        DispatchQueue.main.async {
          completion(photos)
        }
      } else {
        print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
      }
    }.resume()
  }
}
