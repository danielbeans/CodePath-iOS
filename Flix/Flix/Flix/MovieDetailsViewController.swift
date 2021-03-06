//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Daniel Williams on 9/12/21.
//  Copyright © 2021 Daniel Williams. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String:Any]!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var context = CIContext(options: nil)

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        descriptionLabel.text = movie["overview"] as? String
        descriptionLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView!.af_setImage(withURL: posterUrl!)
        
       let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
       backdropView!.af_setImage(withURL: backdropUrl!)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = backdropView.bounds
        backdropView.addSubview(blurredEffectView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
