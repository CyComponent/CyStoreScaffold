import { Map } from 'immutable'

const ACTION = "ACTION"

const defaultState = Map({})

export default function sampleStore(state = defaultState, action) {
  switch(action.type) {
    case action:
      return state
    default:
      return state
  }
}

export function sampleAction() {
  return { type: ACTION }
}
