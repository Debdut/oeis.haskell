module Walk.A324605Spec (main, spec) where
import Test.Hspec
import Walk.A324605 (a324605)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A324605" $
  it "correctly computes the first 10 elements" $
    take 10 (map a324605 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,1,2,1,5,6,1,2,11,8]
