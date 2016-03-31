//
//  ViewController.swift
//  TableCellAutolayout
//
//  Created by Alex S on 30/3/16.
//  Copyright © 2016 SoriAlex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let kCellIdentifier = "cellIdentifier";
    
    let textsArray: [String] = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat. Ut feugiat velit mauris, et convallis libero venenatis et. Sed mattis eu nulla vel pretium. In viverra tincidunt leo id pulvinar. In magna magna, interdum et scelerisque accumsan, posuere a velit. Integer pellentesque elit vitae felis varius mollis et at erat. Praesent suscipit pharetra massa vitae fermentum. Suspendisse pulvinar tincidunt rutrum. Sed vitae nisi sit amet nibh feugiat egestas facilisis quis leo. Fusce neque nisi, elementum sed venenatis eu, molestie eu nibh. Pellentesque hendrerit mattis odio eu dignissim. Curabitur vehicula elementum nunc sit amet mattis.",
                                "Lorem ipsum dolor sit amet",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat. Ut feugiat velit mauris, et convallis libero venenatis et. Sed mattis eu nulla vel pretium. In viverra tincidunt leo id pulvinar.",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat. Ut feugiat velit mauris, et convallis libero venenatis et. Sed mattis eu nulla vel pretium. In viverra tincidunt leo id pulvinar. In magna magna, interdum et scelerisque accumsan, posuere a velit. Integer pellentesque elit vitae felis varius mollis et at erat. Praesent suscipit pharetra massa vitae fermentum. Suspendisse pulvinar tincidunt rutrum. Sed vitae nisi sit amet nibh feugiat egestas facilisis quis leo. Fusce neque nisi, elementum sed venenatis eu, molestie eu nibh. Pellentesque hendrerit mattis odio eu dignissim. Curabitur vehicula elementum nunc sit amet mattis.",
                                "Lorem ipsum dolor sit amet",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat. Ut feugiat velit mauris, et convallis libero venenatis et. Sed mattis eu nulla vel pretium. In viverra tincidunt leo id pulvinar.",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non quam ultrices, viverra diam vitae, vestibulum erat",
                                ];

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self;
        
        self.tableView.registerNib(UINib(nibName: "MultipleElementTableViewCell", bundle: nil), forCellReuseIdentifier: self.kCellIdentifier);

        self.tableView.rowHeight = UITableViewAutomaticDimension;
        // this affect scrolling indicator and scroll performance
        // we must find an accurated and balanced value
        self.tableView.estimatedRowHeight = 120;

    }
    
    // MARK: UITableViewDataSource
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // multiple elements
        let cell = tableView.dequeueReusableCellWithIdentifier(self.kCellIdentifier, forIndexPath: indexPath) as! MultipleElementTableViewCell;
        cell.titleView?.text = String.localizedStringWithFormat("Title for cell %d", indexPath.row);
        cell.descriptionView?.text = self.textsArray[indexPath.row];
        cell.endTitleView?.text = String.localizedStringWithFormat("End title for cell %d", indexPath.row);

        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textsArray.count;
    }
}

