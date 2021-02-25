module KthDifferences.A327762Spec (main, spec) where
import Test.Hspec
import KthDifferences.A327762 (a327762, a327762_list)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327762" $ do
  it "correctly computes the first 10 elements" $
    map a327762 [1..10] `shouldBe` [1, 3, 9, 5, 12, 10, 23, 8, 22, 17]

  it "knows that the sequence is length 56" $
    last a327762_list `shouldBe` 99
