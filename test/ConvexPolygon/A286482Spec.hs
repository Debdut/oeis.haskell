module ConvexPolygon.A286482Spec (main, spec) where
import Test.Hspec
import ConvexPolygon.A286482 (a286482)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A286482" $
  it "correctly computes the first 5 elements" $
      map a286482 [1..5] `shouldBe` expectedValue where
        expectedValue = [1, 1, 6, 6, 26]
