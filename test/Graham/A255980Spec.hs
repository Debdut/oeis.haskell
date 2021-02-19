module Graham.A255980Spec (main, spec) where
import Test.Hspec
import Graham.A255980 (a255980)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A255980" $
  it "correctly computes the first 20 elements" $
    take 20 (map a255980 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,0,1,2,1,2,0,2,1,3,1,2,3,0,1,3,1,4]
