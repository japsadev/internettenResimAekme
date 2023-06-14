//
//  ViewController.swift
//  internettenResimAlma
//
//  Created by Salih Yusuf Göktaş on 14.06.2023.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	@IBAction func button1Tiklandi(_ sender: Any) {
		
		if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/thehatefuleight.png") {
			
			DispatchQueue.global().async() {
				
				let data = try? Data(contentsOf: url)
				
				DispatchQueue.main.async {
					self.imageView.image = UIImage(data: data!)
				}
			}
			
		}
		
	}

	@IBAction func button2Tiklandi(_ sender: Any) {
		
		if let url = URL(string: "http://kasimadalan.pe.hu/filmler/resimler/interstellar.png") {
			
			DispatchQueue.global().async() {
				
				let data = try? Data(contentsOf: url)
				
				DispatchQueue.main.async {
					self.imageView.image = UIImage(data: data!)
				}
			}
			
		}
	}
}

