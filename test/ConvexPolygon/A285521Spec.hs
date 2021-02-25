module ConvexPolygon.A285521Spec (main, spec) where
import Test.Hspec
import ConvexPolygon.A285521 (a285521)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A285521" $
  it "correctly computes the first 20 elements" $
      map a285521 [1..20] `shouldBe` expectedValue where
        expectedValue = [1,1,1,1,1,2,1,1,2,2,1,1,3,2,3,1,2,1,3,2]
