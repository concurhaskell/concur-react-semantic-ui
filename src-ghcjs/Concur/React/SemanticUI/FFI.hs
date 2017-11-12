module Concur.React.SemanticUI.FFI where

import GHCJS.Types (JSVal)

-- | PURE: Access to all the Various Semantic UI components

-------------------------------------------------------------------------------
foreign import javascript unsafe "h$concur.semanticUiReact.Button"
  js_Button :: JSVal

foreign import javascript unsafe "h$concur.semanticUiReact.Button.Group"
  js_ButtonGroup :: JSVal

foreign import javascript unsafe "h$concur.semanticUiReact.Button.Content"
  js_ButtonContent :: JSVal

foreign import javascript unsafe "h$concur.semanticUiReact.Button.Or"
  js_ButtonOr :: JSVal

-------------------------------------------------------------------------------
foreign import javascript unsafe "h$concur.semanticUiReact.Icon"
  js_Icon :: JSVal

-------------------------------------------------------------------------------
foreign import javascript unsafe "h$concur.semanticUiReact.Container"
  js_Container :: JSVal

-------------------------------------------------------------------------------
foreign import javascript unsafe "h$concur.semanticUiReact.Header"
  js_Header :: JSVal
