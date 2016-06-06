import { combineReducers } from 'redux'

import sample, * as sampleActions from './store/sample'

const storeName = 'sample_name'
const store =  { sample }

export {
  storeName,
  store,
  sampleActions
}
