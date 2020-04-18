//
//  TaxiRequestAcceptViewController.swift
//  uber
//
//  Created by yasin on 11.05.2019.
//  Copyright © 2019 yasin. All rights reserved.
//

import UIKit
import MapKit
class TaxiRequestAcceptViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var requestMap: MKMapView!
    @IBOutlet weak var label1: UILabel!
    var locationManager=CLLocationManager()
    var userLocation = CLLocationCoordinate2D()
     let driverVC = DriverViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let center = CLLocationCoordinate2DMake(40.945405, 40.27)
        userLocation=center
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
            requestMap.setRegion(region, animated: true)
            let annotation = MKPointAnnotation()
            annotation.coordinate = center
            annotation.title = "Buradasınız"
            requestMap.addAnnotation(annotation)
        
        
    }
    
    
    
    
    
    @IBAction func acceptRequest(_ sender: Any) {
        
        
    }
    
}
