//
//  ViewController.swift
//  Alura Challenge with StoryBoard
//
//  Created by Fabiana Limma on 04/07/23.
//

struct Movie {
    let id: Int
    let title: String
    let releaseDate: String
    let image: String?
    let overview: String
    let scoreAverage: Float
}


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    enum Item {
        case title
        case movie(movie: Movie)
    }

    let items: [Item] = [
        .title,
        .movie(movie: Movie(id: 1, title: "Órfã 2: A Origem", releaseDate: "2022-07-27", image: nil, overview: "", scoreAverage: 7.2)),
        .movie(movie:  Movie(id: 2, title: "Minions 2: A Origem de Gru", releaseDate: "2022-06-29", image: nil, overview: "", scoreAverage: 7.8)),
        .movie(movie: Movie(id: 3, title: "Thor: Amor e Trovão", releaseDate: "2022-07-06", image: nil, overview: "", scoreAverage: 6.8)),
        .movie(movie: Movie(id: 4, title: "Avatar", releaseDate: "2009-12-18", image: nil, overview: "", scoreAverage: 8.8))
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch items[indexPath.row] {
        case .title:
            let titleCell = tableView.dequeueReusableCell(withIdentifier: "titleCell")!
            return titleCell
            
        case .movie(let movie):
            let movieCell = tableView.dequeueReusableCell(withIdentifier: "movieCell")!
            movieCell.textLabel?.text = movie.title
            movieCell.textLabel?.textColor = UIColor.white
            return movieCell
        }
    }

}


