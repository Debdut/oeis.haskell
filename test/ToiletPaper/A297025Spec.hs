module ToiletPaper.A297025Spec (main, spec) where
import Test.Hspec
import ToiletPaper.A297025 (a297025)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A297025" $
  it "correctly computes the first 20 elements" $
    take 20 (map a297025 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,3,4,4,5,4,4,5,6,5,6,6,5,5,6,5,6]
