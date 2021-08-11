import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useEffect, useState } from 'react';


function App() {
  const [list, setList] = useState([]);
  const [page, setPage] = useState(1);
  const [total, setTotal] = useState(0);
  const limit = 24;

  const getClients = (page, limit) => {
    fetch("http://localhost:3000/clients/count")
      .then(response => response.json())
      .then(data => {
        console.log('Total/Displayed: ', data[0].total + '/' + (limit * (page - 1)));
        setTotal(data[0].total);
      });
    fetch("http://localhost:3000/clients?page=" + page + "&limit=" + limit)
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
    getClients(page, limit);
  }, [page]);

  const Pagination = () => (
    <nav aria-label="Page navigation example">
      <ul className="pagination justify-content-center">
        <li className={(page > 1) ? "page-item" : "page-item disabled"}>
          <a className="page-link" href="#" tabIndex="-1" aria-disabled="true"
            onClick={
              () => {
                if (page > 1) { getPage(page - 1) }
              }
            }>Previous</a>
        </li>
        {(page > 2) &&
          <li className="page-item">
            <a className="page-link"
              onClick={
                () => getPage(page - 2)
              } href="#">{page - 2}</a>
          </li>
        }
        {(page > 1) &&
          <li className="page-item">
            <a className="page-link"
              onClick={
                () => getPage(page - 1)
              } href="#">{page - 1}</a>
          </li>
        }
        <li className="page-item active"><a className="page-link" onClick={
          () => getPage(page)
        } href="#">{page}</a></li>

        {(limit * (page - 1) + limit) < total &&
          <li className="page-item">
            <a className="page-link"
              onClick={
                () => getPage(page + 1)
              } href="#">{page + 1}</a>
          </li>
        }
        {(limit * (page - 1) + (limit * 2)) < total &&
          <li className="page-item"><a className="page-link"
            onClick={
              () => getPage(page + 2)
            } href="#">{page + 2}</a></li>
        }
        <li className={((limit * (page - 1) + limit) < total) ? "page-item" : "page-item disabled"}>
          <a className="page-link" onClick={
            () => {
              if ((limit * (page - 1) + limit) < total) getPage(page + 1)
            }
          } href="#">Next</a>
        </li>
      </ul>
    </nav>
  )

  const Client = ({ item }) => (
    <div className="card">
      <div class="card-header">{item.ClientId}</div>
      <div className="card-body">
        <h5 className="card-title">{item.NomSociete}</h5>
        <h6 className="card-subtitle mb-2 text-muted">{item.ContactNom}</h6>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">{item.Adresse}</li>
          <li class="list-group-item">{item.CodePostal} {item.Ville}</li>
          <li class="list-group-item">{item.Pays}</li>
        </ul>
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
    <div className="App bg-primary">
      <p className="h1 text-white">HELLO MySQL Clients !</p>
      <div className="container pb-3 pt-3">
        <Pagination />
        <ListClients />
        <Pagination />
      </div>
    </div>
  );
}

export default App;
