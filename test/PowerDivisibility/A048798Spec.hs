module PowerDivisibility.A048798Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A048798 (a048798)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A048798" $
  it "correctly computes the first 20 elements" $
    take 20 (map a048798 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,9,2,25,36,49,1,3,100,121,18,169,196,225,4,289,12,361,50]
