{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts #-}
module Concur.React.SemanticUI.Components.Button where

import           Concur.Core                             (Widget, await, effect,
                                                          newNotify, notify)
import           Concur.React                            (HTML, getProp,
                                                          getPropObj, hasProp,
                                                          unDOMEvent, vattrData,
                                                          vevt, vleaf, elEventComp,
                                                          VAttr)

import           Control.Monad.STM                       (atomically)
import           Control.MultiAlternative                (MultiAlternative)
import           Control.MonadSTM                        (MonadSTM)
import           Control.MonadShiftMap                   (MonadShiftMap)

import           System.IO.Unsafe                        (unsafePerformIO)
import           Unsafe.Coerce                           (unsafeCoerce)

import           JavaScript.Array                        (JSArray)
import qualified JavaScript.Array                        as JA

import           JavaScript.Object                       (Object)
import qualified JavaScript.Object                       as JO

import           GHCJS.Foreign.Internal                  (JSONType (..),
                                                          fromJSBool, toJSBool)
import qualified GHCJS.Foreign.Internal                  as GFI
import           GHCJS.Types                             (JSString, JSVal,
                                                          jsval)

------------------------------------------------------------------------------
import           Concur.React.SemanticUI.FFI
------------------------------------------------------------------------------

uiButton
    :: (MonadShiftMap (Widget HTML) m, MultiAlternative m, Monad m, MonadSTM m)
    => [VAttr] -> m () -> m ()
uiButton attrs children = elEventComp "onClick" (const ()) js_Button attrs children
