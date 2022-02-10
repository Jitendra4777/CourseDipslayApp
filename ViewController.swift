//
//  ViewController.swift
//  HostDisplayApp
//
//  Created by Kondru,Jitendra on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var CrsNum: UILabel!
    @IBOutlet weak var crsTtile: UILabel!
    
    @IBOutlet weak var crsSemester: UILabel!
    @IBOutlet weak var PreviousButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    let courses = [["img01","44555","Network Security","Fall 2022"],
                   ["img02","44644", "ios", "Spring 2022"],
                   ["img03", "44656", "Streaming Data", "Summer 2022"]]

    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the details of the first (oth element) course
        updateUI(imageNumber);
        //previous button displayed
        PreviousButton.isEnabled = false;
        
    }

    @IBAction func PreviousButtonClicked(_ sender: Any) {
        
        //Ui should be with previous course details
        imageNumber -= 1
        updateUI(imageNumber);
        NextButton.isEnabled = true
        if(imageNumber == 0){
            PreviousButton.isEnabled = false
        }
        
        
    }
    
    @IBAction func NextButtonClicked(_ sender: Any) {
        //Ui should be updated with next course details
        imageNumber += 1
        updateUI(imageNumber);
        
        // previous button should be enabled
        PreviousButton.isEnabled =  true
        
        //once reaching the end of courses the next button should be disabled.
        if(imageNumber == courses.count-1){
            NextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNumber: Int){
        ImageViewOutlet.image = UIImage(named: courses[imageNumber][0])
        CrsNum.text = courses[imageNumber][1]
        crsTtile.text = courses[imageNumber][2]
        CrsNum.text = courses[imageNumber][3]
    }
}

