import { useSelector, useDispatch } from "react-redux";
import { increment, decrement, incrementByAmount } from "../slices/counterslice";
import { useState } from "react";

export default function ButtonList(){
    //useSelector gets the state from store
  const count = useSelector((state:any) => state.counter.value); // Access the counter state

  //useDispatch updates the store with the state from a component, as defined by your logic inside the counterslice.js
    const dispatch = useDispatch();
    const [inputValue,setInputValue] = useState<number>(0);
    return <div>
        <input placeholder="Amount" value={inputValue} onChange={(event)=>{
        setInputValue(parseInt(event.target.value));
      }}/>
      <button onClick={() => dispatch(increment())}>Increment</button>
      <button onClick={() => dispatch(decrement())}>Decrement</button>
      <button onClick={() => dispatch(incrementByAmount(inputValue))}>Increment by amount</button>
    </div>
}