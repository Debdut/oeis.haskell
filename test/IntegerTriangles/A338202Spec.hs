module IntegerTriangles.A338202Spec (main, spec) where
import Test.Hspec
import IntegerTriangles.A338202 (a338202)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338202" $
  it "correctly computes the first 10 elements" $
    take 10 (map a338202 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,1,2,2,4,5,7,8]
