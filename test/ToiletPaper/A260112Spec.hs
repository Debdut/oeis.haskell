module ToiletPaper.A260112Spec (main, spec) where
import Test.Hspec
import ToiletPaper.A260112 (a260112)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A260112" $
  it "correctly computes the first 20 elements" $
    take 20 (map a260112 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,2,3,4,5,3,4,5,6,4,5,6,7,3,4,5,6]
