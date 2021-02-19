module Graham.A278817Spec (main, spec) where
import Test.Hspec
import Graham.A278817 (a278817)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A278817" $
  it "correctly computes the first 20 elements" $
    take 20 (map a278817 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,2,1,5,2,2,6,1,3,3,2,4,3,3,1,2,4,3]
