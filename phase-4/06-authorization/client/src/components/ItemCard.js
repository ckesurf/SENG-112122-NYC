import React, { useState } from "react";

function ListingCard({ price, name, image_url }) {
  return (
    <li className="card">
      <strong>{name}</strong>
      <div className="image">
        <span className="price">${price}</span>
        <p>hello</p>
        <img src={image_url} />
      </div>
      <div className="details">
        {/* <button className="emoji-button delete">🗑</button> */}
      </div>
    </li>
  );
}

export default ListingCard;
