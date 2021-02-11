module DistinctMidpoints.A285493Spec (main, spec) where
import Test.Hspec
import DistinctMidpoints.A285493 (a285493)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A285493" $
  it "correctly computes the first 20 elements" $
    take 20 (map a285493 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,3,6,10,15,5,13,9,18,29,7,25,37,8,22,14,41,48]
