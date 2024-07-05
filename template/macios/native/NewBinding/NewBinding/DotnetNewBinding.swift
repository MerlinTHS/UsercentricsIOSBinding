//
//  DotnetNewBinding.swift
//  NewBinding
//
//  Created by .NET MAUI team on 6/18/24.
//

import Foundation
import Usercentrics
import UsercentricsUI

@objc(DotnetNewBinding)
public class DotnetNewBinding : NSObject
{

    @objc
    public static func getString(myString: String) -> String {
        UsercentricsCore.configure(options: UsercentricsOptions(settingsId: "Yf-hzQby0S9a7s"));
        NSLog("Configured Usercentrics")
        
        UsercentricsCore.isReady { status in
            NSLog("Usercentrics is ready")
            
            if status.shouldCollectConsent {
                NSLog("Usercentrics should collect")
                
                UsercentricsBanner().showFirstLayer() { UsercentricsConsentUserResponse in
                    NSLog("Usercentrics banned showed")
                }
            } else {
                NSLog("Usercentrics should not collect consent")
            }
        } onFailure: { error in
            NSLog("Usercentrics Something went wrong")
        }
        
        return myString + " from Usercentrics"
    }

}
