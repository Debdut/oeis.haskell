module RichardGuy.A282616Spec (main, spec) where
import Test.Hspec
import RichardGuy.A282616 (a282616)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282616" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282616 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,5,15,20]
