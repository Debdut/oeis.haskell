module AlecSequences.A333398Spec (main, spec) where
import Test.Hspec
import AlecSequences.A333398 (a333398)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333398" $
  it "correctly computes the first 20 elements" $
    map a333398 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,-1,-3,-2,-5,-9,-7,-4,1,5,11,6,13,7,15,8,17,9,19,10]
