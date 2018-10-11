
module Test.TerminalBug ( module Test.TerminalBug ) where

import Test.Tasty.Hspec
import Control.Monad


spec_exampleTest :: Spec
spec_exampleTest = describe "description goes here" $ parallel $ do
  forM_ [1..100] $ \i -> do
    let descr = replicate i 'X'
    describe descr $
      it descr $ 1 `shouldBe` 1

  describe "failing test" $
    it "fails on this one" $ 1 `shouldBe` 2
