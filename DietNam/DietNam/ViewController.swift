//
//  ViewController.swift
//  DietNam
//
//  Created by 길지훈 on 8/19/24.
//

import CoreLocation
import WeMapSDK

class ViewController: UIViewController, WeMapViewDelegate{
    var wemapView: WeMapView?
    override func viewDidLoad() {
        super.viewDidLoad()

        let wemapView = WeMapView(frame: view.bounds)

        wemapView.setCenter(CLLocationCoordinate2D(latitude: 21.0266469, longitude: 105.7615744), zoomLevel: 12, animated: false)
        wemapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(wemapView)
        wemapView.delegate = self
    }
}
