module Graham.A297104Spec (main, spec) where
import Test.Hspec
import Graham.A297104 (a297104)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A297104" $
  it "correctly computes the first 20 elements" $
    take 20 (map a297104 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,4,2,6,7,8,9,5,11,14,12,17,13,15,10,23,18,26,20]
