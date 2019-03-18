// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `sendSticker` method
    struct SendStickerParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Sticker to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a .webp file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
        var sticker: FileInfo

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendStickerParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case sticker = "sticker"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, sticker: FileInfo, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.sticker = sticker
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send .webp stickers. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendStickerParams](https://core.telegram.org/bots/api#sendsticker)
     
     - Parameters:
         - params: Parameters container, see `SendStickerParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendSticker(params: SendStickerParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendSticker", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}