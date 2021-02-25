module ProjectEuler.A268398Spec (main, spec) where
import Test.Hspec
import ProjectEuler.A268398 (a268398)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A268398" $
  it "correctly computes the first 20 elements" $
    take 20 (map a268398 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,7,8,9,10,14,17,18,19,23,24,25,26,42,43,46,47,51]
