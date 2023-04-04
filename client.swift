import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lastLocation = locations.last {
            sendLocationToServer(latitude: lastLocation.coordinate.latitude, longitude: lastLocation.coordinate.longitude)
        }
    }
    
    func sendLocationToServer(latitude: Double, longitude: Double) {
        let url = URL(string: "http://example.com/location")! // replace with your server's URL
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let postString = "latitude=\(latitude)&longitude=\(longitude)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
                print("Error sending location data: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            print("Location data sent to server with status code \(response.statusCode)")
        }.resume()
    }
}
