module AlecSequences.A270841Spec (main, spec) where
import Test.Hspec
import AlecSequences.A270841 (a270841)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A270841" $
  it "correctly computes the first 20 elements" $
    take 20 (map a270841 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,4,6,9,14,23,40,73,138,267,524,1037,2062,4111,8208,16401,32786,65555,131092,262165]
