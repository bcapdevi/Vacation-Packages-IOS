//
//  ViewController.swift
//  locationApp
//
//  Created by Brandon Capdevielle on 11/7/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        //create map annotations
        let paris = MKPointAnnotation()
        paris.coordinate = CLLocationCoordinate2DMake(48.8566, 2.3522)
        paris.title = "Salut Paris"
        
        
        
        let rome = MKPointAnnotation()
        rome.coordinate = CLLocationCoordinate2DMake(41.9028, 12.4964)
        rome.title = "Chiao Roma"
        */
        //Display on Map
        
       // mapLocations.addAnnotations([paris, rome])
        
        //let region = MKCoordinateRegion(center: paris.coordinate, latitudinalMeters: 1000000, longitudinalMeters: 1000000)
        
       // mapLocations.setRegion(region, animated: true)
        /*
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        */
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let hotel = MKPointAnnotation()
        hotel.coordinate = CLLocationCoordinate2DMake(hotelCoordinatesLat[choiceIndex], hotelCoordinatesLon[choiceIndex])
        hotel.title = hotels[choiceIndex]
        
        let entertainmentOne = MKPointAnnotation()
        entertainmentOne.coordinate = CLLocationCoordinate2DMake(entertainmentCoordinatesLat[choiceIndex * 3], entertainmentCoordinatesLon[choiceIndex * 3])
        entertainmentOne.title = entertainmentNames[choiceIndex * 3]
        
        let entertainmentTwo = MKPointAnnotation()
        entertainmentTwo.coordinate = CLLocationCoordinate2DMake(entertainmentCoordinatesLat[choiceIndex * 3 + 1], entertainmentCoordinatesLon[choiceIndex * 3 + 1])
        entertainmentTwo.title = entertainmentNames[choiceIndex * 3 + 1]
        
        let entertainmentThree = MKPointAnnotation()
        entertainmentThree.coordinate = CLLocationCoordinate2DMake(entertainmentCoordinatesLat[choiceIndex * 3 + 2], entertainmentCoordinatesLon[choiceIndex * 3 + 2])
        entertainmentThree.title = entertainmentNames[choiceIndex * 3 + 2]
        
        
        mapLocations.addAnnotations([hotel, entertainmentOne, entertainmentTwo,entertainmentThree])
        
    }


    /*var locationManager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation : CLLocation = locations[0]
        
        locationManager.stopUpdatingLocation()
        
        let here = MKPointAnnotation()
        
        here.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        
        here.title = "hello I am here"
        
        mapLocations.addAnnotation(here)
        
        let region = MKCoordinateRegion(center: userLocation.coordinate, latitudinalMeters: 1000000, longitudinalMeters: 1000000)
        
        mapLocations.setRegion(region, animated: true)
        
        
    }*/
    
    
    @IBOutlet weak var mapLocations: MKMapView!
}

