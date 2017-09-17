//
//  ViewController.swift
//  VkProfileAzat
//
//  Created by Азат Алекбаев on 11.09.17.
//  Copyright © 2017 Азат Алекбаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var onlineLabel: UILabel!
    
    @IBOutlet weak var ageCityLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    
    
    
    @IBOutlet weak var friendsButton: UIButton!
    
    @IBOutlet weak var subsButton: UIButton!
    
    @IBOutlet weak var groupsButton: UIButton!
    
    @IBOutlet weak var photoButton: UIButton!
    
    @IBOutlet weak var videoButton: UIButton!
    
    @IBOutlet weak var musicButton: UIButton!
    
    @IBOutlet weak var giftButton: UIButton!
    
    @IBOutlet weak var fileButton: UIButton!
    
    
    
    @IBOutlet weak var numberOfPhotoLabel: UILabel!
    
    @IBOutlet weak var photoLibraryButton: UIButton!
    
    
    
    @IBOutlet weak var writingButton: UIButton!
    
    @IBOutlet weak var photoForWallButton: UIButton!
    
    @IBOutlet weak var locationButton: UIButton!
    
    
    
    @IBOutlet weak var generalImage: UIImageView!

    @IBOutlet weak var firstImageInSV: UIImageView!
    
    @IBOutlet weak var secondImageInSV: UIImageView!
    
    @IBOutlet weak var thirdImageInSV: UIImageView!
    
    @IBOutlet weak var fourthImageInSV: UIImageView!
    
    
    
    @IBOutlet weak var scrollViewOnTop: UIScrollView!
    
    @IBOutlet weak var bottomScrollView: UIScrollView!
    

    override func viewDidLoad() {
        
        func getRandomName() -> String {
            var names: Array = ["Michael Jackson", "Stephen Hawking", "Justin Bieber", "Justin Timberlake", "Азат Алекбаев"]
            
            let length = names.count
            let randomNameNumber = arc4random_uniform(UInt32(length))
            let randomName = names.remove(at: Int(randomNameNumber))
            return randomName
        }
        
        func getRandomOnlineOrNotState() -> String {
            var tempArray: Array = ["online (моб.)" , "заходил 8 минут назад", "заходил 1 год назад", "заходил 1 минуту назад"]
            let length = tempArray.count
            let randomStateNumber = arc4random_uniform(UInt32(length))
            let randomState = tempArray.remove(at: Int(randomStateNumber))
            return randomState
        }
        
        func getRandomAgeAndCity() -> String {
            var tempArray: Array = ["100 лет, Набережные Челны", "30 лет, Казань", "19 лет, Казань", "10 лет, Днепропетровск"]
            let length = tempArray.count
            let randomStateNumber = arc4random_uniform(UInt32(length))
            let randomState = tempArray.remove(at: Int(randomStateNumber))
            return randomState
        }

        scrollViewOnTop.layer.borderWidth = 0.5
        scrollViewOnTop.layer.borderColor = UIColor.lightGray.cgColor
        
        bottomScrollView.layer.borderWidth = 0.5
        bottomScrollView.layer.borderColor = UIColor.white.cgColor
        
        generalImage.layer.borderWidth=1.0
        generalImage.layer.masksToBounds = false
        generalImage.layer.borderColor = UIColor.white.cgColor
        generalImage.layer.cornerRadius = generalImage.frame.size.height/2
        generalImage.clipsToBounds = true
        
        generalImage.image = UIImage(named: "Image\(arc4random_uniform(4) + 1).png")
        
        firstImageInSV.image = UIImage(named: "Image\(arc4random_uniform(4) + 1).png")
        
        secondImageInSV.image = UIImage(named: "Image\(arc4random_uniform(4) + 1).png")
        
        thirdImageInSV.image = UIImage(named: "Image\(arc4random_uniform(4) + 1).png")
        
        fourthImageInSV.image = UIImage(named: "Image\(arc4random_uniform(4) + 1).png")
        
        myNameLabel.text = getRandomName()
        
        onlineLabel.text = getRandomOnlineOrNotState()
        onlineLabel.textColor = UIColor.lightGray
        ageCityLabel.text = getRandomAgeAndCity()
        ageCityLabel.textColor = UIColor.lightGray
        
        let randomNumber = (arc4random_uniform(50) + 1)
        let randomNumberForSubs = randomNumber*2+13
        let randomNumberForGroups = randomNumber + 11
        let randomNumberForPhoto = randomNumber*2
        let randomNumberForVideo = randomNumber*4 + 33
        let randomNumberForAudio = randomNumber*5 + 19
        let randomNumberForGift = randomNumber*2 + 5
        let randomNumberForFile = randomNumber*2 + 48
        
        
        
        numberOfPhotoLabel.text = String(randomNumberForPhoto) + " фотографий"
        numberOfPhotoLabel.textColor = UIColor.lightGray
        
        let friendsAttributedString = NSAttributedString(string: String(randomNumber) + "\n" + "друзей", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let subsAttributedString = NSAttributedString(string: String(randomNumberForSubs) +  "\n" + "подписчик", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let groupsAttributedString = NSAttributedString(string: String(randomNumberForGroups) +  "\n" + "групп", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let photoAttributedString = NSAttributedString(string: String(randomNumberForPhoto) +  "\n" + "фото", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let videoAttributedString = NSAttributedString(string: String(randomNumberForVideo) +  "\n" + "видео", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let audioAttributedString = NSAttributedString(string: String(randomNumberForAudio) +  "\n" + "аудио", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let giftAttributedString = NSAttributedString(string: String(randomNumberForGift) +  "\n" + "подарков", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        let fileAttributedString = NSAttributedString(string: String(randomNumberForFile) +  "\n" + "файл", attributes: [NSForegroundColorAttributeName: UIColor.black ])
        friendsButton.setAttributedTitle(friendsAttributedString, for: .normal)
        friendsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        friendsButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        subsButton.setAttributedTitle(subsAttributedString, for: .normal)
        subsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        subsButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        groupsButton.setAttributedTitle(groupsAttributedString, for: .normal)
        groupsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        groupsButton.titleLabel?.textAlignment = NSTextAlignment.center

        photoButton.setAttributedTitle(photoAttributedString, for: .normal)
        photoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        photoButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        videoButton.setAttributedTitle(videoAttributedString, for: .normal)
        videoButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        videoButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        musicButton.setAttributedTitle(audioAttributedString, for: .normal)
        musicButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        musicButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        giftButton.setAttributedTitle(giftAttributedString, for: .normal)
        giftButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        giftButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        fileButton.setAttributedTitle(fileAttributedString, for: .normal)
        fileButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        fileButton.titleLabel?.textAlignment = NSTextAlignment.center
        
        
        super.viewDidLoad()
    }
}

