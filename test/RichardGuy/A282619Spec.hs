module RichardGuy.A282619Spec (main, spec) where
import Test.Hspec
import RichardGuy.A282619 (a282619)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282619" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282619 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,2,10,40,212]
