module Walk.A300444Spec (main, spec) where
import Test.Hspec
import Walk.A300444 (a300444)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A300444" $
  it "correctly computes the first 4 elements" $
    take 4 (map a300444 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,7,9,8]
