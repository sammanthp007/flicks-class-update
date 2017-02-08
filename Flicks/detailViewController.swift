//
//  detailViewController.swift
//  Flicks
//
//  Created by A on 2/7/17.
//  Copyright © 2017 samman. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var overviewLabelView: UILabel!
    @IBOutlet weak var titleLabelView: UILabel!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie)
        
        let title = movie["title"] as? String
        let overview = movie["overview"] as? String
        
        overviewLabelView.text = title
        titleLabelView.text = overview
        
        if let poster_path = movie["poster_path"] as! String? {
        let poster_base_url = "https://image.tmdb.org/t/p/w342"
        let poster_url = NSURL(string: poster_base_url + poster_path)
        
        posterView.setImageWith(poster_url as! URL)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
