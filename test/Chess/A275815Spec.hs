module Chess.A275815Spec (main, spec) where
import Test.Hspec
import Chess.A275815 (a275815)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A275815" $
  it "correctly computes the first 3 elements" $
      map a275815 [1..3] `shouldBe` expectedValue where
        expectedValue = [0,4,17]
