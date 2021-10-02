import React, { useEffect, useState } from "react";
import "../App.css";
export default function Dashbord() {
  const [name, setName] = useState([]);
  useEffect(() => {
    fetch("/owners/1", {
      method: "GET",
    })
      .then((response) => response.json())
      .then((data) => setName(data));
  }, []);

  return (
    <>
      <div className="main">
        <p>Hello {name.name}</p>
      </div>
      <div class="alert alert-info" role="alert">
        <strong>Well done!</strong> You successfully read this important alert
        message.
        <button className="btn btn-danger">Refuse</button>
        <button className="btn btn-success">Accept</button>
      </div>
      <div class="alert alert-info" role="alert">
        <strong>Heads up!</strong> This alert needs your attention, but it's not
        super important.
        <button className="btn btn-danger">Refuse</button>
        <button className="btn btn-success">Accept</button>
      </div>
      <div class="alert alert-info" role="alert">
        <strong>Warning!</strong> Better check yourself, you're not looking too
        good.
        <button className="btn btn-danger">Refuse</button>
        <button className="btn btn-success">Accept</button>
      </div>
      <div class="alert alert-info" role="alert">
        <strong>Oh snap!</strong> Change a few things up and try submitting
        again.
        <button className="btn btn-danger">Refuse</button>
        <button className="btn btn-success">Accept</button>
      </div>
    </>
  );
}
