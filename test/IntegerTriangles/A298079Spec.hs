module IntegerTriangles.A298079Spec (main, spec) where
import Test.Hspec
import IntegerTriangles.A298079 (a298079)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298079" $
  it "correctly computes the first 10 elements" $
    take 10 (map a298079 [3..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,6,7,11,15,26,24,42]
