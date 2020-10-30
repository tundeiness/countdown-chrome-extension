
import * as React from "react";
import './App.css';



function App() {
  const [counter, setCounter] = React.useState(60);

  React.useEffect(() => {
    counter > 0 && setTimeout(() => setCounter(counter - 1), 1000);
  }, [counter]);

  return (
    <div className="App">
      <div className="counter">{counter}</div>
    </div>
  );
}

export default App;
