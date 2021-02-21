module Tables.A269331Spec (main, spec) where
import Test.Hspec
import Tables.A269331 (a269331)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269331" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269331 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
