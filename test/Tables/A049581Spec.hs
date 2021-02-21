module Tables.A049581Spec (main, spec) where
import Test.Hspec
import Tables.A049581 (a049581)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A049581" $
  it "correctly computes the first 20 elements" $
    take 20 (map a049581 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,0,2,3,1,1,3,4,2,0,2,4,5,3,1,1,3]
