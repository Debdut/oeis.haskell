module Chess.A278212Spec (main, spec) where
import Test.Hspec
import Chess.A278212 (a278212)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A278212" $
  it "correctly computes the first 3 elements" $
      map a278212 [1..3] `shouldBe` expectedValue where
        expectedValue = [0,2,8]
