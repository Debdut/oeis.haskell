module RichardGuy.A282617Spec (main, spec) where
import Test.Hspec
import RichardGuy.A282617 (a282617)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282617" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282617 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,4,14,104]
