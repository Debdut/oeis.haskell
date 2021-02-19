module Graham.A280244Spec (main, spec) where
import Test.Hspec
import Graham.A280244 (a280244)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A280244" $
  it "correctly computes the first 20 elements" $
    take 20 (map a280244 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,6,2,3,6,3,4,6,8,3,6,8,4,5,8,9,10]
