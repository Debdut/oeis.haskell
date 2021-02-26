module RichardGuy.A282618Spec (main, spec) where
import Test.Hspec
import RichardGuy.A282618 (a282618)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282618" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282618 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,2,6,26,108]
