//store.jsx

"use client";
import { combineReducers, configureStore  } from "@reduxjs/toolkit";
import counterReducer from "../slices/counterslice";

const rootReducer = combineReducers({
  counter: counterReducer,
},);

export const store = configureStore({
  reducer: rootReducer,
 });
