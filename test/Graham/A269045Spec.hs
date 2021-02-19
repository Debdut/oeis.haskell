module Graham.A269045Spec (main, spec) where
import Test.Hspec
import Graham.A269045 (a269045)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269045" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269045 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,6,8,9,10,12,15,16,18,20,24,25,27,28,30,32,35]
