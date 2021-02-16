module External.A128223Spec (main, spec) where
import Test.Hspec
import External.A128223 (a128223)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A128223" $
  it "correctly computes the first 20 elements" $
    take 20 (map a128223 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,3,7,10,17,21,31,36,49,55,71,78,97,105,127,136,161,171,199]
