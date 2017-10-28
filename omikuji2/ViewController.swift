
import UIKit

class ViewController: UIViewController {
    
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //占いボタンが押された時発動
    @IBAction func tapUranai(_ sender: UIButton) {
        
        //占いの結果をランダムに選ぶための数字を作成
        //(７で割っているので０から６しか出てこない)
        let r = Int(arc4random()) % omikuji.count
        
        print("今日の占い:\(omikuji[r])")
        
        //部品となるアラートを作成
        let alert = UIAlertController(title: "占い結果", message: "\(omikuji[r])", preferredStyle: .alert)
        
        //アラートにOKボタンを追加
        //handler : OKボタンが押された時に行いたい処理を指定する場所
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.uranai(seba: r)}))
        
        
        //アラートを表す表示する
        //completion: 動作が完了した後に発動される処理を指定する場所
        present(alert, animated: true, completion: {() -> Void in print("アラート表示されました")})
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    
    func uranai(seba: Int) {
        
        switch seba {
        case 0:
            myImageView.image = UIImage(named: "daikiti.jpg")
        case 1:
            myImageView.image = UIImage(named: "kiti.jpg")
            
        case 2:
            myImageView.image = UIImage(named: "tyuukiti.jpg")
            
        case 3:
            myImageView.image = UIImage(named: "shoukiti.jpeg")
            
        case 4:
            myImageView.image = UIImage(named: "suekiti.jpg")
        case 5:
            myImageView.image = UIImage(named: "kyou.jpeg")
            
        default:
            myImageView.image = UIImage(named: "daikyou.jpg")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}



