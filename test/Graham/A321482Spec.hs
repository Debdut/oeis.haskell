module Graham.A321482Spec (main, spec) where
import Test.Hspec
import Graham.A321482 (a321482)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A321482" $
  it "correctly computes the first 20 elements" $
    map a321482 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,3,0,6,8,11,2,0,17,18,5,23,25,27,0,31,3,35,10]
