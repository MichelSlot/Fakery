import Quick
import Nimble
@testable import Fakery

final class GameSpec: QuickSpec {
  override func spec() {
    describe("Game") {
      var game: Game!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        game = Game(parser: parser)
      }
      
      describe("#character") {
        it("returns the correct text") {
          let character = game.character()
          expect(character).to(equal("Ezio Auditore da Firenze"))
        }
      }
    }
  }
}
