import { useSelector } from "react-redux";

export default function ShowValue(){
    const count = useSelector((state:any) => state.counter.value); // Access the counter state

    return <div>{count}</div>;
}