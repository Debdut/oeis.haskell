module External.A174344Spec (main, spec) where
import Test.Hspec
import External.A174344 (a174344)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A174344" $
  it "correctly computes the first 20 elements" $
    take 20 (map a174344 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,0,-1,-1,-1,0,1,2,2,2,2,1,0,-1,-2,-2,-2,-2]
