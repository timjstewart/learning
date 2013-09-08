module SimpleReflexAgent where

data Action = MoveUp | MoveDown | MoveLeft | MoveRight | Stay
            deriving (Show, Eq)

data State = Dirty | Clean | Wall
           deriving (Show, Eq)

data Rule = Rule Condition Action
            deriving (Show, Eq)

type Condition = (State -> Bool)

interpretInput :: Percept -> State

ruleMatch :: State -> Rule

agentAction :: Percept -> IO Action
agentAction p = do
  state <- interpretInput p
  let (Rule _ action) = ruleMatch state rules
  return action

  
  
