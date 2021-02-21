module Tables.A273823Spec (main, spec) where
import Test.Hspec
import Tables.A273823 (a273823)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273823" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273823 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,3,4,2,1,5,3,6,7,4,2,1,8,5,3,9,6,10]
