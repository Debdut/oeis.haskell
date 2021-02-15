module Nonpalindromes.A252702Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252702 (a252702)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252702" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252702 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,9,72,576,5112,45432,408312,3669696,33022152,297153936]
