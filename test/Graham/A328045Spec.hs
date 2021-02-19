module Graham.A328045Spec (main, spec) where
import Test.Hspec
import Graham.A328045 (a328045)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328045" $
  it "correctly computes up to a(10)" $
    map a328045 [0..10] `shouldBe` expectedValue where
      expectedValue = [0,1,4,6,4,10,9,14,15,9,18]
