//
//  ViewController.swift
//  testDate
//
//  Created by Patrick (Pei) Kuang on 2/29/16.
//  Copyright © 2016 Autodesk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    func getDefaultServerDateFormatter() -> NSDateFormatter{
        let formatter = NSDateFormatter()
        formatter.timeZone = NSTimeZone(name: "UTC")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        
        
        // https://developer.apple.com/library/ios/qa/qa1480/_index.html
        // On the other hand, if you're working with fixed-format dates, you should first set the locale of the date formatter to something appropriate for your fixed format. In most cases the best locale to choose is "en_US_POSIX", a locale that's specifically designed to yield US English results regardless of both user and system preferences. "en_US_POSIX" is also invariant in time (if the US, at some point in the future, changes the way it formats dates, "en_US" will change to reflect the new behaviour, but "en_US_POSIX" will not), and between machines ("en_US_POSIX" works the same on iOS as it does on OS X, and as it it does on other platforms).
        
        formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        
        
        
        return formatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let defaultServerDateFormatter = getDefaultServerDateFormatter()
        let dateConverted = defaultServerDateFormatter.dateFromString("2016-02-29T09:21:39.346Z")
        print(dateConverted)
        dateLabel.text = dateConverted?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

