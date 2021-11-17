//
//  ViewController.swift
//  LocationProject
//
//  Created by Movses Aghabekyan on 14.11.21.
//
import CoreLocation
import UIKit

class ViewController: UIViewController {
    let locationManager = CLLocationManager()
    var seconds = 0
    var timer: Timer?
    var distanceTravel = 0
    @IBOutlet weak var priceInput: UITextField!
    @IBOutlet weak var enterPrice: UIButton!
    @IBOutlet weak var startTrip: UIButton!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var timerIsStarted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        if locationManager.authorizationStatus != .denied && locationManager.authorizationStatus != .notDetermined {
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startMonitoringVisits()
        }
    }
    
    @IBAction func startStopButton(_ sender: Any) {
        distance.isHidden = false
        duration.isHidden = false
        price.isHidden = false

        if timerIsStarted == true {
            timerIsStarted = false
            startTrip.setTitle("Start Trip", for: .normal)
            locationManager.stopUpdatingLocation()
            distanceTravel = 0
            startTrip.setTitleColor(.blue, for: .normal)
            distance.isHidden = true
            duration.isHidden = true
            price.isHidden = true
            timer?.invalidate()
            seconds = 0
            duration.text = "\(seconds) sec"
        } else {
            print(locationManager.debugDescription)
            timerIsStarted = true
            startTrip.setTitle("Stop Trip", for: .normal)
            startTrip.setTitleColor(.red, for: .normal)
            locationManager.startUpdatingLocation()
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                self.seconds += 1
                self.duration.text = "\(self.seconds) sec"
            }
        }
    }
    
    @IBAction func getInput(_ sender: Any) {
        let input = priceInput.text
        if input?.count ?? 0 > 0 {
            price.text = "\((Int(input!))! * (distanceTravel / 1000))$"
        }
    }
}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        for location in locations {
            distanceTravel += Int((location.speed))
            distance.text = String(distanceTravel)
            price.text = "\( (Double(priceInput.text!)! / 10.0) * (Double(Int(distanceTravel) / 100)))$"
        }
    }
}

