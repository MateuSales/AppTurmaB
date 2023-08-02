import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieImageView.layer.cornerRadius = 8
        movieImageView.layer.masksToBounds = true
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.backgroundColor = .blue

        configure(with: movie)
    }

    func configure(with movie: Movie) {
        movieTitle.text = movie.title
        movieImageView.download(path: movie.posterPath)
        movieRating.text = "Classificação: \(movie.voteAverage)"
        movieDescription.text = movie.overview
    }
}
