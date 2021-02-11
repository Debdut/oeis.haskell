module AlecSequences.A333401Spec (main, spec) where
import Test.Hspec
import AlecSequences.A333401 (a333401)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333401" $
  it "correctly computes the first 20 elements" $
    map a333401 [1..20] `shouldBe` expectedValue where
      expectedValue = [2, 4, 3, 4, 3, 3, 3, 3, 3, 4, 3, 5, 3, 5, 3, 4, 2, 7, 3, 5]
