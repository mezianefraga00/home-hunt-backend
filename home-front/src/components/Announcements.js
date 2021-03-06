import React, { useEffect, useState } from "react";
import "../App.css";
export default function Announcements() {
  const [homes, setHomes] = useState([]);
  useEffect(() => {
    fetch("/homes")
      .then((response) => response.json())
      .then((home) => {
        setHomes(home);
      });
  }, []);
  return (
    <>
      <h1 className="text-align: center">
        Find your next home on Home Indeed{" "}
      </h1>
      <div className="containerannoce">
        <div className="row">
          {homes.map((home, key) => (
            <div className="col-md-4">
              <div className="carbon-example flex-wrapper">
                <img
                  className="imgdash"
                  src={"/" + home.img_url + ".jpg"}
                  alt="home page"
                ></img>

                <h4>
                  {home.nbr_bedroom} ba {home.nbr_bathroom} ba {home.surface}{" "}
                  sqft
                </h4>
                <p>
                  {home.location.app_nbr}&nbsp;
                  {home.location.street}&nbsp;
                  {home.location.city}&nbsp;
                  {home.location.state}&nbsp;
                  {home.location.zipcode}&nbsp;
                </p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </>
  );
}
