module DistinctMidpoints.A285492Spec (main, spec) where
import Test.Hspec
import DistinctMidpoints.A285492 (a285492)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A285492" $
  it "correctly computes the first 20 elements" $
    take 20 (map a285492 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,5,4,8,11,6,15,12,9,7,20,25,16,30,36,10,18,47]
