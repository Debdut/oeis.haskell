module ToiletPaper.A056792Spec (main, spec) where
import Test.Hspec
import ToiletPaper.A056792 (a056792)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A056792" $
  it "correctly computes the first 20 elements" $
    take 20 (map a056792 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,3,4,4,5,4,5,5,6,5,6,6,7,5,6,6,7]
