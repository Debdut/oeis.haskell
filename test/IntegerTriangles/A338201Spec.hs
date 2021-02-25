module IntegerTriangles.A338201Spec (main, spec) where
import Test.Hspec
import IntegerTriangles.A338201 (a338201)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338201" $
  it "correctly computes the first 10 elements" $
    take 10 (map a338201 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,1,0,2,1,2,1]
