module Agent where

data Percept
  = Wall
  | Goal
  | Square
  deriving (Eq, Show)

type PerceptSequence = [Percept]

data Action
  = MoveUp
  | MoveDown
  | MoveLeft
  | MoveRight
  | Stay
  deriving (Eq, Show)

type AgentFunction = PerceptSequence -> Action

