module ModelBasedReflexAgent where

data State = ...

data Rule = Rule Condition Action

type Rules = [Rule]

data Agent = Agent {
  state  :: State,
  rules  :: Rules,
  action :: Maybe Action
  }

agentFunction :: Percept -> State Agent Action
agentFunction percept = do
  agent <- get
  let s = state agent
      s' = updateState s (action agent) percept
      (Rule _ action) = ruleMatch s' (rules agent)
  return action
  
  
