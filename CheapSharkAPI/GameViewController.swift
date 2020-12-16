//
//  GameViewController.swift
//  CheapSharkAPI
//
//  Created by Jamario Davis on 12/15/20.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var normalPriceLbl: UILabel!
    @IBOutlet weak var salePriceLbl: UILabel!
    @IBOutlet weak var metaCriticScoreLbl: UILabel!
    
    var game:GameInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = "Title: \(String(describing: game!.title))"
        normalPriceLbl.text =  "Normal Price: $\(String(describing: game!.normalPrice))"
        salePriceLbl.text = "Sale Price: $\(String(describing: game!.salePrice))"
        metaCriticScoreLbl.text = "Meta Critic Score: \(String(describing: game!.metacriticScore))"
        
        let urlString = "https://www.cheapshark.com"+(game?.thumb)!
        let url = URL(string: urlString)
        thumbView.layer.borderWidth = 1
        thumbView.layer.masksToBounds = false
        thumbView.layer.borderColor = UIColor.black.cgColor
        thumbView.layer.cornerRadius = thumbView.frame.height / 2
        thumbView.clipsToBounds = true
        thumbView.downloadedFrom(url: url!)
    }
}
