//
//  ViewController.swift
//  GettingStartedWithSafariViewController
//
//  Created by Jordan Morgan on 6/25/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    fileprivate var urlString:String = "https://google.com"

    //MARK: Lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Web Content Presenting
    @IBAction func openInSafari(_ sender: AnyObject)
    {
        //TODO: Open in native safari
    }
    
    @IBAction func openWithSafariVC(_ sender: AnyObject)
    {
        //TODO: Open in safari view controller
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //TODO: open in webview
    }
}

