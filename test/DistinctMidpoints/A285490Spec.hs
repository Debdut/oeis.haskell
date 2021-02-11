module DistinctMidpoints.A285490Spec (main, spec) where
import Test.Hspec
import DistinctMidpoints.A285490 (a285490)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A285490" $
  it "correctly computes the first 20 elements" $
    take 20 (map a285490 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,1,3,5,1,7,4,9,12,1,17,21,28,6,27,2,16]
