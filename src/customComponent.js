import React, { useState } from "react"

const CustomHeading = () => {
    const [counter, setCounter] = useState(0);
    return <h1 onClick={()=>setCounter(prevCount => prevCount + 1 )}>Hello {counter} Times</h1>
};

export default CustomHeading;