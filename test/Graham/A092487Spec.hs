module Graham.A092487Spec (main, spec) where
import Test.Hspec
import Graham.A092487 (a092487)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A092487" $
  it "correctly computes the first 20 elements" $
    take 20 (map a092487 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,4,5,0,5,6,7,7,0,8,11,8,13,7,9,0,17,9,19,10]
