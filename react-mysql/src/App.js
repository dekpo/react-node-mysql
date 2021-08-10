import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useEffect, useState } from 'react';


function App() {
  const [list, setList] = useState([]);
  const [page, setPage] = useState(1);

  const getClients = (page) => {
    fetch("http://localhost:3000/?page=" + page + "&limit=6")
      .then(response => response.json())
      .then(data => {
        console.log(data);
        setList(data);
      });
  }

  const getPage = (page) => {
    setPage(page);
  }

  useEffect(() => {
    getClients(page);
  },[page]);

  const Pagination = () => (
    <nav aria-label="Page navigation example">
      <ul className="pagination justify-content-center">
        <li className="page-item">
          <a className="page-link" href="#" tabindex="-1" aria-disabled="true"
          onClick={
            () => { 
              if (page>1){ getPage(page-1) }
             }
          }>Previous</a>
        </li>
        <li className="page-item active"><a class="page-link" onClick={
            () => getPage(page)
          }  href="#">{page}</a></li>
        <li className="page-item"><a class="page-link" 
        onClick={
          () => getPage(page+1)
        }  href="#">{page+1}</a></li>
        <li className="page-item"><a class="page-link" 
        onClick={
          () => getPage(page+2)
        }  href="#">{page+2}</a></li>
        <li className="page-item">
          <a className="page-link" onClick={
            () => getPage(page+1)
          } href="#">Next</a>
        </li>
      </ul>
    </nav>
  )

  const Client = ({ item }) => (
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

  return (
    <div className="App">
      <p className="h1">HELLO MySQL Clients !</p>
      <div className="container">
        <ListClients />
        <Pagination />
      </div>
    </div>
  );
}

export default App;
