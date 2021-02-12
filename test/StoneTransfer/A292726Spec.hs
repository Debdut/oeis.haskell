module StoneTransfer.A292726Spec (main, spec) where
import Test.Hspec
import StoneTransfer.A292726 (a292726)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A292726" $
  it "correctly computes the first 10 elements" $
    take 10 (map a292726 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,5,6,8,14,22,27,38]
