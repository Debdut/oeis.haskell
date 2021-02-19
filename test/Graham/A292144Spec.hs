module Graham.A292144Spec (main, spec) where
import Test.Hspec
import Graham.A292144 (a292144)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A292144" $
  it "correctly computes the first 20 elements" $
    take 20 (map a292144 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,1,0,0,0,2,4,0,0,3,0,0,0,9,0,8,0,5]
