module External.A180714Spec (main, spec) where
import Test.Hspec
import External.A180714 (a180714)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A180714" $
  it "correctly computes the first 20 elements" $
    take 20 (map a180714 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,1,0,-1,-2,-1,0,1,2,3,4,3,2,1,0,-1,-2,-3]
