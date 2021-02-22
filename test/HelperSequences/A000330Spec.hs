module HelperSequences.A000330Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000330 (a000330)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000330" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000330 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,5,14,30,55,91,140,204,285,385,506,650,819,1015,1240,1496,1785,2109,2470]
