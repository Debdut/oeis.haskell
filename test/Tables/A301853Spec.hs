module Tables.A301853Spec (main, spec) where
import Test.Hspec
import Tables.A301853 (a301853)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A301853" $
  it "correctly computes the first 20 elements" $
    take 20 (map a301853 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,3,5,6,4,7,9,10,5,9,12,14,15,6,11,15,17,19]
