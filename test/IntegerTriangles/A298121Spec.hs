module IntegerTriangles.A298121Spec (main, spec) where
import Test.Hspec
import IntegerTriangles.A298121 (a298121)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298121" $
  it "correctly computes the first 10 elements" $
    take 10 (map a298121 [4..]) `shouldBe` expectedValue where
      expectedValue = [1,3,5,11,18,29,44,70,94,136]
