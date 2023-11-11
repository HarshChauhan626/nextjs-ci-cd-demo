"use client";

import { useDispatch, useSelector } from "react-redux";
import { increment, decrement, incrementByAmount } from "./slices/counterslice";
import { useState } from "react";
import ButtonList from "./components/buttonList";
import ShowValue from "./components/showValue";


export default function Home() {
//useSelector gets the state from store
  const count = useSelector((state:any) => state.counter.value); // Access the counter state

//useDispatch updates the store with the state from a component, as defined by your logic inside the counterslice.js
  const dispatch = useDispatch();
  const [inputValue,setInputValue] = useState<number>(0);

  return (
    <div>
      <ShowValue />
      <ButtonList />
    </div>
  );
}