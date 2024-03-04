//
//  ViewController.swift
//  UnitTesting
//
//  Created by Mohamed Abd Elhakam on 04/03/2024.
//

import UIKit

class ViewController: UIViewController {

    var repositories: [Repository] = []
    var mm = APIService()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mm.getRepositories { (repositories: [Repository]?, error) in
            guard let repositories = repositories else {
                debugPrint(URLError(.badURL))
                return
            }
            self.repositories = repositories
            print(repositories)
        }
    }


}

