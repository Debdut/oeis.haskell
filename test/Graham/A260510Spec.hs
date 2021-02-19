module Graham.A260510Spec (main, spec) where
import Test.Hspec
import Graham.A260510 (a260510)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A260510" $
  it "correctly computes the first 20 elements" $
    take 20 (map a260510 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,0,1,1,1,1,0,1,3,1,4,1,1,0,6,1,7,2]
