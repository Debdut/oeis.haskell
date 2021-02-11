module AlecSequences.A333400Spec (main, spec) where
import Test.Hspec
import AlecSequences.A333400 (a333400)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333400" $
  it "correctly computes the first 20 elements" $
    map a333400 [1..20] `shouldBe` expectedValue where
      expectedValue = [0, -1, -2, 1, -3, -4, 2, 3, 5, 4, 6, -5, 7, -6, 8, -7, 9, -8, 10, -9]
