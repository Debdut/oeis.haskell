module Tables.A269267Spec (main, spec) where
import Test.Hspec
import Tables.A269267 (a269267)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269267" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269267 [1..]) `shouldBe` expectedValue where
      expectedValue = [31,33,59,62,71,73,83,86,94,102,109,116,126,127,129,130,142,143,146,147]
