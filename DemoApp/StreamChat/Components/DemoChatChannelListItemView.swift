//
// Copyright © 2023 Stream.io Inc. All rights reserved.
//

import StreamChatUI
import UIKit

final class DemoChatChannelListItemView: ChatChannelListItemView {
    override var contentBackgroundColor: UIColor {
        /// In case it is a message search, we don't want change the bg color.
        if content?.searchResult?.message != nil {
            return super.contentBackgroundColor
        }
        if AppConfig.shared.demoAppConfig.isChannelPinningEnabled && content?.channel.isPinned == true {
            return appearance.colorPalette.pinnedMessageBackground
        }
        return super.contentBackgroundColor
    }

    override func updateContent() {
        super.updateContent()

        backgroundColor = contentBackgroundColor
    }
}
