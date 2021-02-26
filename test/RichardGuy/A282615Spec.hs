module RichardGuy.A282615Spec (main, spec) where
import Test.Hspec
import RichardGuy.A282615 (a282615)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282615" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282615 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,3,4,9]
