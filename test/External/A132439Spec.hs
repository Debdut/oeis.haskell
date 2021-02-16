module External.A132439Spec (main, spec) where
import Test.Hspec
import External.A132439 (a132439)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A132439" $
  it "correctly computes the first 20 elements" $
    map a132439 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,3,2,4,7,7,4,8,17,22,17,8,16,40,60,60,40]
