module Walk.A293689Spec (main, spec) where
import Test.Hspec
import Walk.A293689 (a293689)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A293689" $
  it "correctly computes the first 20 elements" $
    take 20 (map a293689 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,1,2,3,4,3,4,5,6,5,4,3,2,3,4,5,6,5]
