//
//  HomeViewController.swift
//  TDPYoutube
//
//  Created by Thidar Phyo on 11/28/20.
//

import UIKit
import YoutubePlayer_in_WKWebView

class HomeViewController: UIViewController {
    

    @IBOutlet weak var playerView: WKYTPlayerView!
    
    var passVideoUrl = "https://www.youtube.com/watch?v=Z3VY2jq7iL8"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //playerView.load(withVideoId: "https://www.youtube.com/watch?v=Z3VY2jq7iL8")

        let notEmbeddableVideoID = "Z3VY2jq7iL8"
        playerView.load(withVideoId: notEmbeddableVideoID, playerVars: [
            "playsinline": 1,
            "origin": "https://youtube.com",
            "iv_load_policy": 3,
            "modestbranding": 1,
            "fs": 0
            ])
    }


}
