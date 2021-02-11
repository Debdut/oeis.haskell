module AlecSequences.A269524Spec (main, spec) where
import Test.Hspec
import AlecSequences.A269524 (a269524)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269524" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269524 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,3,4,5,5,7,8,9,7,11,9,13,14,15,10,17,11,19]
