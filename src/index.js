import React from "react";
import { createRoot } from "react-dom/client";
import CustomHeading from "./customComponent";

const App  = () => {
    return <CustomHeading/>;
}
const root = createRoot(document.getElementById("root"));
root.render(<App />);