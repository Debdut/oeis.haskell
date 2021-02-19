module Graham.A297022Spec (main, spec) where
import Test.Hspec
import Graham.A297022 (a297022)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A297022" $
  it "correctly computes the first 20 elements" $
    take 20 (map a297022 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,2,3,9,5,6,7,8,16,10,12,14,11,15,25,13,18,21,20]
