module Tables.A276162Spec (main, spec) where
import Test.Hspec
import Tables.A276162 (a276162)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276162" $
  it "correctly computes the first 20 elements" $
    take 20 (map a276162 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,2,1,1,1,2,1,1,2,3,4,1,1,1,2,3,4]
