module DistinctMidpoints.A285491Spec (main, spec) where
import Test.Hspec
import DistinctMidpoints.A285491 (a285491)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A285491" $
  it "correctly computes the first 20 elements" $
    take 20 (map a285491 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,4,6,2,9,1,13,8,19,2,15,12,28,32,6,4,18]
