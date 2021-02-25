module KthDifferences.A327460Spec (main, spec) where
import Test.Hspec
import KthDifferences.A327460 (a327460, a327460_list)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327460" $ do
  it "correctly computes the first 10 elements" $
    map a327460 [1..10] `shouldBe` [1, 3, 9, 5, 12, 10, 23, 8, 22, 17]

  it "knows that the 56th term differs from A327762" $
    a327460 56 `shouldBe` 101
