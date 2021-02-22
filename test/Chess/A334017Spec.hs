module Chess.A334017Spec (main, spec) where
import Test.Hspec
import Chess.A334017 (a334017)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334017" $
  it "correctly computes the first 20 elements" $
      map a334017 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 1, 2, 2, 5, 10, 4, 13, 33, 63, 8, 32, 98, 240, 454, 16, 76, 269, 777, 1871]
