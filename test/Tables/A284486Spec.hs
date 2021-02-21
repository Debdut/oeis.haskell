module Tables.A284486Spec (main, spec) where
import Test.Hspec
import Tables.A284486 (a284486)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284486" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284486 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,1,2,2,2,3,3,3,2,3,2,4,3,4,1,1,2]
