//
//  ViewController.swift
//  LocationAndMaps
//
//  Created by lee bennett on 10/27/21.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mainButton: UIButton!

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainButton.setTitle("Hey", for: .normal)
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 10.0
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        locationManager.stopUpdatingLocation()
    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        
    }
    
    // MARK: - CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
                
        // optional binding
        if let location = locations.first{
            print("lat: \(location.coordinate.latitude) lng: \(location.coordinate.longitude)")
            
//            location.distance(from: <#T##CLLocation#>)
        }
        
        
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // no signal
        // rejected permission
    }
}

