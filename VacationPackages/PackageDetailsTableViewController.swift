//
//  PackageDetailsTableViewController.swift
//  VacationPackages
//
//  Created by Turing on 11/10/23.
//

let packageNames = ["Rome", "San Francisco", "Austin"]
let packageImage = ["rome", "sf", "austin"]
let flights = ["Iberian 531", "United 122", "Alaska 782"]
let travelDates = ["10/2 - 10/15", "12/22 - 12/28", "2/16 - 2/26"]
let hotels = ["Hotel Artemide", "The Fairmont", "The Driskill"]
let hotelImages = ["hotelRome", "hotelSF", "hotelAustin"]
let hotelAdresses = ["Via Nazionale, 22, 00184", "950 Mason St", "604 Brazos St"]
let hotelBeds = ["1 King", "2 Queen", "2 Full"]
let hotelCoordinatesLat = [41.9016, 37.7920, 30.2684]
let hotelCoordinatesLon = [12.4941, -122.4102, -97.7403]
let entertainmentNames = ["Collosseum", "Vatican Tour", "Hadrian's Tomb", "Golden Gate Bridge Tour", "Alcatraz Tour", "China Town Tour", "Saint Edwards Tour", "6th Street", "UT Football Game"]
let entertainmentImages = ["colluseum", "vatican", "hadrian", "goldenGate", "alcatraz", "chinaTown", "stEds", "sixth", "ut" ]
let entertainmentDates = [
    "11/15",
    "11/22",
    "11/30",
    "12/05",
    "12/12",
    "12/18",
    "12/24",
    "12/28",
    "01/03"
]

let entertainmentDesc = ["Take a tour of the Collosseum and see the ancient site!", "Take a tour of the Vatican and see the beautiful art", "See the tomb of an emperor!", "See one of the marvels of the modern world!", "See one of the toughest prisons ever!", "See the rich culture of China town!", "Come see the best school ever!", "Have a fun night on the wildest street in Austin!", "Come watch the best team in college football!"]
let entertainmentAddress = ["Piazza del Colosseo, 1, 00184", "Vatican City","Lungotevere Castello, 50, 00193","Golden Gate Bridge", "Alcatraz Island", "Grant Ave & Bush St","3001 S Congress Ave","6th", "405 E 23rd St"]
let entertainmentCoordinatesLat = [41.890209, 41.902240, 41.903308, 37.819929, 37.826977, 37.791157, 30.224140, 30.2672, 30.283073]
let entertainmentCoordinatesLon = [12.492231, 12.453311, 12.466817, -122.478256, -122.422955, -122.408522, -97.765289, -97.740000, -97.732169]

var choiceIndex = 0


import UIKit
import CoreLocation

class PackageDetailsTableViewController: UITableViewController {

    
    
    
    @IBOutlet weak var lblPackageDestination: UILabel!
    
    @IBOutlet weak var imgDestination: UIImageView!
    
    @IBOutlet weak var lblTravelDates: UILabel!
    
    @IBOutlet weak var lblFlightInfo: UILabel!
    
    @IBOutlet weak var imgHotel: UIImageView!
    
    @IBOutlet weak var lblHotel: UILabel!
    
    @IBOutlet weak var lblBeds: UILabel!
    
    @IBOutlet weak var lblHotelAddress: UILabel!
    
    @IBOutlet weak var imgEntertainmentOne: UIImageView!
    
    @IBOutlet weak var lblEntertainmentDateOne: UILabel!
    
    @IBOutlet weak var lblDescriptionOne: UILabel!
    
    @IBOutlet weak var lblEntertainmentAddressOne: UILabel!
    
    @IBOutlet weak var imgEntertainmentTwo: UIImageView!
    
    @IBOutlet weak var lblEntertainmentDateTwo: UILabel!
    
    @IBOutlet weak var lblDescriptionTwo: UILabel!
    
    @IBOutlet weak var lblEntertainmentAddressTwo: UILabel!
    
    @IBOutlet weak var imgEntertainmentThree: UIImageView!
    
    @IBOutlet weak var lblEntertainmentDatesThree: UILabel!
    
    @IBOutlet weak var lblDescriptionThree: UILabel!
    
    @IBOutlet weak var lblEntertainmentAddressThree: UILabel!
    
    @IBOutlet weak var lblEntertainmentOne: UILabel!
    
    @IBOutlet weak var lblEntertainmentTwo: UILabel!
    
    @IBOutlet weak var lblEntertainmentThree: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
        
        
        lblPackageDestination.text = packageNames[choiceIndex]
        imgDestination.image = UIImage(named: packageImage[choiceIndex])
        lblTravelDates.text = travelDates[choiceIndex]
        lblFlightInfo.text = flights[choiceIndex]
        
        imgHotel.image = UIImage(named: hotelImages[choiceIndex])
        lblHotel.text = hotels[choiceIndex]
        lblBeds.text = hotelBeds[choiceIndex]
        lblHotelAddress.text = hotelAdresses[choiceIndex]
        
        imgEntertainmentOne.image = UIImage(named: entertainmentImages[choiceIndex*3])
        lblEntertainmentDateOne.text = entertainmentDates[choiceIndex*3]
        lblDescriptionOne.text = entertainmentDesc[choiceIndex*3]
        lblEntertainmentAddressOne.text = entertainmentAddress[choiceIndex*3]
        
        imgEntertainmentTwo.image = UIImage(named: entertainmentImages[choiceIndex*3+1])
        lblEntertainmentDateTwo.text = entertainmentDates[choiceIndex*3+1]
        lblDescriptionTwo.text = entertainmentDesc[choiceIndex*3+1]
        lblEntertainmentAddressTwo.text = entertainmentAddress[choiceIndex*3+1]
        
        imgEntertainmentThree.image = UIImage(named: entertainmentImages[choiceIndex*3+2])
        lblEntertainmentDatesThree.text = entertainmentDates[choiceIndex*3+2]
        lblDescriptionThree.text = entertainmentDesc[choiceIndex*3+2]
        lblEntertainmentAddressThree.text = entertainmentAddress[choiceIndex*3+2]
        
    }
    
    
    
    
    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
