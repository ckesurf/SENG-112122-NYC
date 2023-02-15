import ItemCard from "./ItemCard";

function LoggedInApp({ setCurrentUser, currentUser }) {
  const handleLogout = () => {
    setCurrentUser(null);
    fetch("/logout", { method: "DELETE" });
  };

  const itemCards = currentUser.items.map((item) => {
    return <ItemCard {...item} key={item.id} />;
  });
  return (
    <div>
      Welcome {currentUser.username}!
      <p>
        <button onClick={handleLogout}>Logout</button>
      </p>
      {itemCards}
    </div>
  );
}

export default LoggedInApp;
