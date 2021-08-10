import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useEffect, useState } from 'react';


function App() {
  const [list, setList] = useState([]);

  const getClients = () => {
    fetch("http://localhost:3000?limit=6")
      .then(response => response.json())
      .then(data => {
        console.log(data);
        setList(data);
      });
  }

  const Client = ({item}) => (
    <div className="card">
      <div className="card-body">
        <h5 className="card-title">{item.ClientId}</h5>
        <h6 className="card-subtitle mb-2 text-muted">{item.NomSociete}</h6>
        <p className="card-text">{item.ContactNom}</p>
        <p className="card-text">{item.Adresse}</p>
        <p className="card-text">{item.CodePostal} {item.Ville}</p>
        <p className="card-text">{item.Pays}</p>
      </div>
    </div>
  )

  const ListClients = () => (
    <div className="row">
      {
        list.map((item) => {
          return (
          <div key={item.ClientId} className="col-12 col-md-4 mb-3">
            <Client item={item} />
          </div>
          )
        })
      }
    </div>
  )

  useEffect(() => {
    getClients();
  }, []);

  return (
    <div className="App">
      <p className="h1">HELLO MySQL</p>
      <div className="container">
        <ListClients />
      </div>
    </div>
  );
}

export default App;
