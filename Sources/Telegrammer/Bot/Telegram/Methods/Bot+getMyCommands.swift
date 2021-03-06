// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /**
     Use this method to get the current list of the bot's commands. Requires no parameters. Returns Array of BotCommand on success.

     SeeAlso Telegram Bot API Reference:
     [GetMyCommandsParams](https://core.telegram.org/bots/api#getmycommands)
     
     - Parameters:
         - params: Parameters container, see `GetMyCommandsParams` struct
     - Throws: Throws on errors
     - Returns: Future of `[BotCommand]` type
     */
    @discardableResult
    func getMyCommands() throws -> Future<[BotCommand]> {
        return try client
            .request(endpoint: "getMyCommands")
            .flatMapThrowing { (container) -> [BotCommand] in
                return try self.processContainer(container)
        }
    }
}
