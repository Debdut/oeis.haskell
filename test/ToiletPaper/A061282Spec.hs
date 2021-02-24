module ToiletPaper.A061282Spec (main, spec) where
import Test.Hspec
import ToiletPaper.A061282 (a061282)

main :: IO ()
main = hspec spec

spec = describe "A061282" $
  it "correctly computes the first 20 elements" $
    take 20 (map a061282 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,4,3,4,5,3,4,5,4,5,6,5,6,7,4,5]
