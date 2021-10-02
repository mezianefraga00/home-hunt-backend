import React, { useState } from "react";
import "../App.css";
import Announcements from "./Announcements";
import Login from "./Login";
function Navbar() {
  const [number, setNumber] = useState(0);
  const handleSubmit = (e) => {
    e.preventDefault();
    if (number === 0) {
      document.body.style.overflow = "hidden";
      setNumber(1);
    }
  };
  console.log(number);

  return (
    <>
      <div>
        <nav className="navbar navbar-expand-lg navbar-light bg-light">
          <button
            className="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="navbar-toggler-icon"></span>
          </button>
          <button className="btn btn-danger rounded-pill">Home Indeed</button>

          <div className="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
              <li className="nav-item">
                <button className="btn btn-light">Buy</button>
              </li>
              <li className="nav-item">
                <button className="btn btn-light">Rent</button>
              </li>
            </ul>
          </div>

          <div className="search">
            <form className="form-inline my-2 my-lg-0">
              <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
                <li>
                  <input
                    className="form-control mr-sm-2"
                    type="search"
                    placeholder="Search"
                    aria-label="Search"
                  ></input>
                </li>
                <li>
                  {" "}
                  <button
                    className="btn btn-outline-success my-2 my-sm-0"
                    type="submit"
                  >
                    Search
                  </button>
                </li>
                <li>
                  <button
                    className="btn btn-danger btn-pill"
                    onClick={handleSubmit}
                  >
                    LOGIN
                  </button>
                </li>
              </ul>
            </form>
          </div>
        </nav>
      </div>
      <div className="containerlo">
        <Login num={number} />
        <img className="imagehome" src="/house.jpg" alt="home page"></img>
      </div>
      <Announcements />
    </>
  );
}
export default Navbar;
