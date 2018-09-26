//
//  SirenLocalizationExtension.swift
//  Siren
//
//  Created by Arthur Sabintsev on 9/25/18.
//  Copyright © 2018 Sabintsev iOS Projects. All rights reserved.
//

import Foundation

// MARK: - Helpers (Localization)

extension Siren {
    func localizedUpdateAvailableMessage() -> String {
        return Bundle.localizedString(forKey: alertMessaging.updateTitle.string,
                                      forceLanguageLocalization: forceLanguageLocalization)
    }

    func localizedUpdateTitle() -> String {
        return Bundle.localizedString(forKey: alertMessaging.updateTitle.string,
                                      forceLanguageLocalization: forceLanguageLocalization)
    }

    func localizedNewVersionMessage() -> String {
        let newVersionMessage = Bundle.localizedString(forKey: alertMessaging.updateMessage.string,
                                                       forceLanguageLocalization: forceLanguageLocalization)

        guard let currentAppStoreVersion = currentAppStoreVersion else {
            return String(format: newVersionMessage, appName, "Unknown")
        }

        return String(format: newVersionMessage, appName, currentAppStoreVersion)
    }

    func localizedUpdateButtonTitle() -> String {
        return Bundle.localizedString(forKey: alertMessaging.updateButtonMessage.string,
                                      forceLanguageLocalization: forceLanguageLocalization)
    }

    func localizedNextTimeButtonTitle() -> String {
        return Bundle.localizedString(forKey: alertMessaging.nextTimeButtonMessage.string,
                                      forceLanguageLocalization: forceLanguageLocalization)
    }

    func localizedSkipButtonTitle() -> String {
        return Bundle.localizedString(forKey: alertMessaging.skipVersionButtonMessage.string,
                                      forceLanguageLocalization: forceLanguageLocalization)
    }
}
