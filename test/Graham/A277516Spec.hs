module Graham.A277516Spec (main, spec) where
import Test.Hspec
import Graham.A277516 (a277516)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A277516" $
  it "correctly computes the first 20 elements" $
    take 20 (map a277516 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,2,3,0,5,4,2,6,0,4,2,1,5,4,3,0,2,4,4]
