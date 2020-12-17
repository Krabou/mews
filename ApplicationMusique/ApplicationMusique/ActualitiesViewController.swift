//
//  ViewController.swift
//  exo actu
//
//  Created by Karima Krachai on 24/07/2019.
//  Copyright © 2019 Karima Krachai. All rights reserved.
//

import UIKit

class ActualitiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    var actualities: [Actuality] = []
    var filteredActualities = [Actuality]()
//    var searching = false
    
    
    
    @IBOutlet weak var actualityTableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var styles = [StyleMusical]()
        
        // Do any additional setup after loading the view.
     actualityTableView.dataSource = self
    
        let rap = StyleMusical(name: "rap", image: UIImage(named: "styleRap"))
        let electro = StyleMusical(name: "electro", image: UIImage(named: "style electro"))
        let rnb = StyleMusical(name: "rnb", image: UIImage(named: "style R&B"))
        let pop = StyleMusical(name: "pop", image: UIImage(named: "style pop"))
        let reggae = StyleMusical(name: "reggae", image: UIImage(named: "style reggae"))
        let jazz = StyleMusical(name: "jazz", image: UIImage(named: "styleJazz "))
        let classique = StyleMusical(name: "classique" , image: UIImage(named: "style classique"))
        let decouverte = StyleMusical(name: "découverte", image: UIImage(named: "style surprise"))
        let rock = StyleMusical(name: "rock", image: UIImage(named: "style rock"))
        let musiqueDuMonde = StyleMusical(name: "world", image: UIImage(named: "style monde"))
        
        styles.append(electro)
        styles.append(rap)
        styles.append(rnb)
        styles.append(pop)
        styles.append(reggae)
        styles.append(jazz)
        styles.append(classique)
        styles.append(decouverte)
        styles.append(rock)
        styles.append(musiqueDuMonde)
        
         var artistes: [Artiste] = []
        
//        self.navigationController?.navigationBar.prefersLargeTitles = true
       
//        let muse = Artiste(name:"Muse", photo: UIImage(named: "Muse"), nation:"reputation", sons:["starlight"], style: [rock], album: ["BHandR"])
        let slimane = Artiste(name: "Slimane", photo: UIImage(named: "slimane"), nation: "France", sons: ["String"], style: [rnb], album: ["Solune"])
        let sherylCrow = Artiste(name: "Sheryl Crow", photo: UIImage(named: "SherylCrow"), nation: "Américaine", sons: ["Prove you wrong"], style: [pop, rock], album: ["Threads"])
        let riles = Artiste(name: "Riles", photo: UIImage(named: "Riles"), nation: "Français", sons: ["Thank god"], style: [rap], album: ["Welcome to the jungle"])
        let bonIver = Artiste(name: "Bon Iver", photo: UIImage(named: "Bon Iver"), nation: "Américain", sons: ["Yi"], style: [pop], album: ["I,I"])
        let friendlyFires = Artiste(name: "Friendly Fires", photo: UIImage(named: "Friendly-Fires-"), nation: "Britannique", sons: ["Can't wait forever", "Even let me in", "Silouhettes"], style: [rock], album: ["Inflorescent"])
        let electricYouth = Artiste(name: "Electric Youth", photo: UIImage(named: "Electric Youth"), nation: "Canadian", sons: ["The life","Arawa", "Breathless" ], style: [pop], album: ["Memory Emotion"])
        let rickRoss = Artiste(name: "Rick Ross", photo: UIImage(named: "RickRoss"), nation: "Américian", sons: ["Push it"], style: [rap], album: ["Port of Miami"])
        let toriKelly = Artiste(name: "Tori Kelly", photo: UIImage(named: "ToriKelly"), nation: "Américaine", sons: ["Change your mind"], style: [rnb], album: ["Inspired by true events"])
        let samFender = Artiste(name: "Sam Fender", photo: UIImage(named: "BRITs2019-samfender"), nation: "English", sons: ["hypersonic missiles"], style: [rock], album: ["Hypersonic missiles"])
        let slipknot = Artiste(name: "Slipknot", photo: UIImage(named: "slipknot"), nation: "Américaine", sons: ["Insert Coin"], style: [rock], album: ["We are not your kind"])
        let clairo = Artiste(name: "Clairo", photo: UIImage(named: "clairo"), nation: "Américaine", sons: ["Pretty Girl"], style: [electro,pop], album: ["Immunity"])
        let djSnake = Artiste(name: "DJ Snake", photo: UIImage(named: "DJSNAKE_300"), nation: "Français", sons: ["Taki taki"], style: [electro, rock, rnb, reggae, rap], album: ["Carte Blanche"])
        let arianaGrande = Artiste(name: "Ariana Grande", photo: UIImage(named: "arianagrande"), nation: "Américaine", sons: ["7 Rings"], style: [pop, rnb], album: ["Thank U, Next"])
        let amelBent = Artiste(name: "Amel Bent", photo: UIImage(named: "amelBent"), nation: "Française", sons: ["Dis-moi qui tu es", "Demain", "Rien", "Une star", "Si on te demande", "Ne retiens pas tes larmes", "Ou je vais", "Ma philosophie"], style: [rnb, pop], album: ["Demain", "Instinct", "Un jour d'été"])
        let paulMccartney = Artiste(name: "Paul Mc Cartney", photo: UIImage(named: "paulmccartney"), nation: "Britannique", sons: ["Drive my car","Blackbird","Hey Jude","Let it Be","I saw her Standing there"], style: [pop, rock, classique], album: ["Egypt Station", "New", "Kisses on the Button","Memory Almost Full"," Amoeba Gig"])
        let theAvener = Artiste(name: "The Avener ", photo: UIImage(named: "theAvener"), nation: "Française", sons: ["Wild","Beautiful"], style: [electro], album: ["Beautiful"])
        let davidGuetta = Artiste(name: "David Guetta ", photo: UIImage(named: "davidGuetta"), nation: "Française", sons: ["Never Be Alone"], style: [electro], album: ["7"])
        let katyPerry = Artiste(name: "Katy Perry", photo: UIImage(named: "katyPerry"), nation: "Américaine", sons: ["Dark Horse"], style: [pop, rock], album: ["Witness"])
        
//        let bonIver
//
//        artistes.append(muse)
        artistes.append(sherylCrow)
        artistes.append(riles)
        artistes.append(slimane)
        artistes.append(bonIver)
        artistes.append(friendlyFires)
        artistes.append(electricYouth)
        artistes.append(rickRoss)
        artistes.append(toriKelly)
        artistes.append(samFender)
        artistes.append(slipknot)
        artistes.append(clairo)
        artistes.append(arianaGrande)
        artistes.append(amelBent)
        artistes.append(paulMccartney)
        artistes.append(theAvener)
        artistes.append(davidGuetta)
        artistes.append(katyPerry)

        
        
//        let actu1 = Actuality(titre:"actu1", photo: UIImage(named: "image2")!, artiste: [muse], description:"j'ai besoin de vacance", datePublication: "3-12-19" , dateEffet: "10-12-19")
        let amelSlimane = Actuality(titre:"Partage une vidéo d’Amel Bent en folie pour «VersuS»!", photo: UIImage(named: "slimane-2")!, artiste: [slimane], description:"Le chanteur a partagé une vidéo de son amie en train de chanter un morceau de son prochain album, bientôt disponible. Slimane et Vitaa vont bientôt dévoiler leur nouvel album. «VersuS» est prévu pour le 23 août prochain. Le projet est très attendu par les fans. Et pour cause, les premiers singles, déjà sortis, ont été un vrai succès pour le duo de chanteurs. Pour cet album, Vitaa et Slimane ont fait appel à de nombreux artistes. Pour plusieurs morceaux, différents chanteurs se sont prêtés au jeu et ont participé à la fabrication de certains singles. Amel Bent en fait partie. La jeune femme a donné sa voix pour le titre «A la vie».", datePublication: "30-07-19" , dateEffet: "30-07-19")
        let actuDJSnake = Actuality(titre: "DJ Snake se confie sur son nouvel album «Carte Blanche»", photo: UIImage(named: "DJSNAKE_300"), artiste: [djSnake], description: "Le DJ français est de retour avec son deuxième album qui sort aujourd’hui. En exclusivité, DJ Snake nous dévoile tous les détails de production. DJ Snake ne s’arrête jamais de créer. Le jeune français est toujours en pleine réflexion et aime s’inspirer de l’environnement qui l’entoure pour composer ses morceaux, surtout pour «Carte Blanche». Depuis qu’il est enfant, DJ Snake a toujours aimé voyager. Désormais, grâce à sa musique, il peut se le permettre. «Je me sentais un peu obligé d’utiliser les différentes vibes que j’entendais au Brésil, en Amérique Latine, en Afrique, dans les Caraïbes ou en Europe».", datePublication: "26-07-19", dateEffet: "26-07-19")
        let actuArianna = Actuality(titre: "Ariana Grande: rendez-vous le 2 août pour son nouveau hit!", photo:  UIImage(named:  "arianagrande"), artiste: [arianaGrande], description: "La star de la pop a dévoilé un teaser de sa prochaine chanson, qui sortira dans quelques jours. Ariana Grande a le sens de la communication. Lorsqu’elle a une nouvelle à annoncer, concernant sa carrière musicale, la jeune femme aime faire durer le suspense. Depuis quelques jours sur ses réseaux sociaux, la chanteuse s’amuse à poster quelques indices à propos d’un futur projet. Alors qu’elle a récemment participé à la nouvelle collection Givenchy, en tant qu’égérie, une photo a fait réagir ses fans. Et pour cause, la belle est apprêtée dans une sublime tenue du créateur. Mais ce n’est pas tout, sur le cliché, un spot de lumière dépasse en haut du cadre. Ce qui laisse présager le tournage du prochain clip d’Ariana Grande.", datePublication: "30-08-19", dateEffet: "30-08-19")
        let actuTheAvener = Actuality(titre:"The Avener plus Wild que jamais", photo: UIImage(named: "theAvener"), artiste: [theAvener], description: "The Avener continue de teaser sur son deuxième album. Après Beautiful l'artiste revisite de façon electro le titre Wild", datePublication: "30-07-19" ,dateEffet: "30-07-19")
        let actuDavidGuetta = Actuality(titre:"David Guetta et Aloe Blacc en duo!", photo: UIImage(named: "davidGuettaduo"), artiste: [davidGuetta], description:"Pour son nouveau tube potentiel. David Guetta s'entoure du DJ danois Morten et du Chanteur d'Aloe Blacc pour signer le percutant Never Be Alone!" , datePublication: "30-07-19" ,dateEffet: "30-07-19")
        let actuKatyPerry = Actuality(titre: "Katy Perry a-t-elle plagié le titre Dark Hourse", photo: UIImage(named: "katyPerry"), artiste: [katyPerry], description: "La justice américaine a tranché: Katy Perry a bel et bien plagié le titre Joyful Noise du rappeur Flame pour créer son tube planétaire Dark Horse. Le montant des dommages et interêt risque d'être élévée" , datePublication: "30-07-19" ,dateEffet: "30-07-19")
        
        
        actualities.append(amelSlimane)
//        actualities.append(actu1)
        actualities.append(actuDJSnake)
        actualities.append(actuArianna)
        actualities.append(actuTheAvener)
        actualities.append(actuDavidGuetta)
        actualities.append(actuKatyPerry)
//        actualities.append(actu2)
       
        actualityTableView.reloadData()
        
        filteredActualities = actualities
        
        
        
    }
    
    func  setUpSearchBar() {
        searchbar.delegate = self
        searchbar.returnKeyType = UIReturnKeyType.done
    }
    
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchActualities = actualities.filter({$0.prefix(searchText.count) == searchText})
//        searching = true
//        actualityTableView.realoadData()
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return filteredActualities.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "actualityCell", for: indexPath) as? ActualityTableViewCell {
        
//        if searching {
//            cell?.textLabel?.text = searchActualities[indexPath.row]
        
//        } else  {
            cell.titleActu.text = filteredActualities[indexPath.row].titre
            cell.imageActu.image = filteredActualities[indexPath.row].photo
            //            cell.imageActu.image = UIImage (named : "")
            cell.textActu.text = filteredActualities[indexPath.row].description
            cell.backCell.layer.cornerRadius = 4
        
        return cell
    } else {
    return UITableViewCell()
}
        
        }
    
    //        search bar
    
   let searchController = UISearchController(searchResultsController: nil)
//    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool { self.filterContentForSearchText(searchString) return true }
// self.filterContentForSearchText(searchController.searchBar.text!
    

    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredActualities = actualities
        
        if searchText.isEmpty == false {
            filteredActualities = actualities.filter( { $0.titre.lowercased().contains(searchText.lowercased()) || ($0.artiste.first?.name.lowercased().contains(searchText.lowercased()))! })
//            filteredActualities = actualities.filter({ (Actuality) -> Bool in
//                return Actuality.titre.lowercased().contains(searchText.lowercased())
//            })
           
        }
        actualityTableView.reloadData()
    }
    

    
    }
    
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if  searchActualities = = [searchText.lowercased()]
//      searching = true
//      actualityTableView.reloadData()
//    }
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searching = false
//        searchBar.text = ""
//        actualityTableView.reloadData()
//
//
//}



