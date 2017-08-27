//
//  MapViewController.swift
//  F2C
//
//  Created by praveen ms on 8/26/17.
//  Copyright © 2017 Praveen MS. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    var mapView: MKMapView!
    
    override func loadView() {
        mapView = MKMapView()
        view = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("map view loaded successfully!")
    }
    
}
