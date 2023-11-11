"use client";
import { Provider } from "react-redux";
import { store } from "../stores/store";

export function RootProvider({
    children,
  }: {
    children: React.ReactNode
  }) {
  return <Provider store={store}>{children}</Provider>;
}