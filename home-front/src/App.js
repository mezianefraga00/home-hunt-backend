import "./App.css";
import Navbar from "./components/Navbar";
import Dashbord from "./components/Dashbord";
import { BrowserRouter, Route, Switch } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Switch>
          <Route path="/home" component={Navbar} />
          <Route path="/dashbord" component={Dashbord} />
        </Switch>
      </BrowserRouter>
    </div>
  );
}

export default App;
