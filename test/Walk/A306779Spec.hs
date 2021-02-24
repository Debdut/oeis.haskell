module Walk.A306779Spec (main, spec) where
import Test.Hspec
import Walk.A306779 (a306779)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306779" $
  it "correctly computes the first 10 elements" $
    take 10 (map a306779 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 4, 3, 5, 9, 4, 8, 11, 16]
