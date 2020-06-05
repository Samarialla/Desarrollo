import React, { Component } from 'react';
import Axios from 'axios';
import Pagination from "react-js-pagination";
import Modal from 'react-bootstrap4-modal';
class User extends Component {
    constructor(props) {
        super(props);
        this.state = {
            user: null,
            modal: false,
            formId: '',
            formName: '',
            formEmail: '',
            formTelefono:  '',
            formSexo:  '',
            formFecha_nac:'',
            validacion:  false,
        };

    }

    editusers(event) {
        event.preventDefault();
        const formData = new FormData()
        formData.append('id', this.state.formId)
        formData.append('name', this.state.formName)
        formData.append('email', this.state.formEmail)
        formData.append('telefono', this.state.formTelefono)
        formData.append('sexo', this.state.formSexo)
        formData.append('fecha_nac', this.state.formFecha_nac)
        if (this.state.formName != '' && this.state.formEmail != '' && this.state.formTelefono != '' && this.state.formSexo != '' && this.state.formFecha_nac != '') {
            axios.post('/user/update', formData).then(response => {
                if (response.data.success == true) {
                    this.setState({ modal: false })
                    this.getdata();
                }
            }).catch(error => {
                console("Error " + error);
            })
        } else {
            this.setState({ validacion: 'Campo obligatorio' })
        }
    }




    //carga  los al renderizar el componente
    async componentDidMount() {
        await this.getdata();

    }

    //obtenemos los datos de uri
    async getdata(pageNumber = 1) {
        const url = `/user?page=${pageNumber}`;
        Axios.get(url).then(response => {
            this.setState({ user: response.data })
            // console.log(this.state. users);
        }).catch(error => {
            alert("Error " + error)
        })
    }
    render() {
        const { user } = this.state;
        const { modal } = this.state;

        //cierra el modal
        const handleCloseModal = event => {
            event.preventDefault();
            this.setState({ modal: false })
        }

        // escucha a los values
        const handleChangeName = (event) => {
            this.setState({ formName: event.target.value });
        }

        const handleChangeEmail = (event) => {
            this.setState({ formEmail: event.target.value });
        }

        const handleChangeTelefono = (event) => {
            this.setState({ formTelefono: event.target.value });
        }
        const handleChangeSexo = (event) => {
            this.setState({ formSexo: event.target.value });
        }

        const handleChangeFecha_nac = (event) => {
            this.setState({ formFecha_nac: event.target.value });
        }

        /******fin de crear*********/



        return (
            <>
                <div className="container">
                    <div className='row '>
                        <h2>USUARIOS</h2>
                    </div>
                    <hr />
                    {user && this.renderList()}
                </div>
                <Modal visible={modal} onClickBackdrop={handleCloseModal}>
                    <div className="modal-header">
                        <h3 className="modal-title">Editar</h3>
                    </div>
                    <div className="modal-body">
                    <form className='container'>
                            <div>
                                <label>Nombre Completo *</label>
                            </div>
                            <div  >
                                <input type='text' className='form-control' value={this.state.formName} onChange={handleChangeName} ></input>
                                <span className='validacion'>{this.state.validacion}</span>
                            </div>
                            <div className='form-group'>
                                <div>
                                    <label>Email *</label>
                                </div>
                                <div>
                                    <input type='email' className='form-control' value={this.state.formEmail} onChange={handleChangeEmail} required></input>
                                    <span className='validacion'>{this.state.validacion}</span>
                                </div>
                            </div>
                            <div className='form-group'>
                                <div>
                                    <label>Fecha de Nacimiento *</label>
                                </div>
                                <div>
                                    <input type='date' className='form-control' value={this.state.formFecha_nac} onChange={handleChangeFecha_nac}></input>
                                    <span className='validacion'>{this.state.validacion}</span>
                                </div>
                            </div>
                            <div className='form-group'>
                                <div>
                                    <label>Telefono *</label>
                                </div>
                                <div>
                                    <input type='text' min='10' className='form-control' value={this.state.formTelefono} onChange={handleChangeTelefono} required ></input>
                                    <span className='validacion'>{this.state.validacion}</span>
                                </div>
                            </div>
                            <div className='form-group'>
                                <div>
                                    <label>Sexo*</label>
                                </div>
                                <select name="sexo" className="form-control " value={this.state.formSexo} onChange={handleChangeSexo} >
                                    <option value="F">Femenino</option>
                                    <option value="M">Masculino</option>
                                </select>
                            </div>
                        </form>
                    </div>
                    <div className="modal-footer">
                        <button type="button" className="btn btn-secondary" onClick={handleCloseModal}> Cancelar</button>
                        <button type="submit" className="btn btn-primary" onClick={(event) => this.editusers(event)}> Actualizar</button>
                    </div>
                </Modal>
                </>
        );
    }

    renderList() {
        const { data, current_page, per_page, total, to, from } = this.state.user;
        const editusers = (user) => {
            this.setState({ modal: true })
            //Modal.setAppElement('body');
            this.setState({
                formId: user.id,
                formName: user.name,
                formEmail: user.email,
                formTelefono: user.telefono,
                formSexo: user.sexo,
                formFecha_nac: user.fecha_nac,
            });
        }
        return (
            <>
                <table className="table table-bordered order-table ">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre Completo</th>
                            <th>Contraseña</th>
                            <th>Email</th>
                            <th>Telefono</th>
                            <th>Sexo</th>
                            <th>Fecha</th>
                            <th>Accion</th>
                        </tr>
                    </thead>
                    <tbody id="bodytable">
                        {data.map((user, index) => {

                            return <tr key={user.id}>
                                <td >{user.id}</td>
                                <td>{user.name}</td>
                                <td>No se puede mostrar el pass</td>
                                <td>{user.email}</td>
                                <td>{user.telefono}</td>
                                <td>{user.sexo}</td>
                                <td>{user.fecha_nac}</td>
                                <td><button className='btn btn-info' onClick={() => editusers(user)}>♠</button></td>

                            </tr>

                        })}
                    </tbody>
                </table>

                <div className='row'>
                    <ul className='d-flex justify-content-left'>
                        <Pagination
                            itemClass="page-item"
                            linkClass="page-link"
                            activePage={this.state.user.current_page}
                            itemsCountPerPage={this.state.user.per_page}
                            totalItemsCount={this.state.user.total}
                            onChange={(pageNumber) => this.getdata(pageNumber)}

                        />
                    </ul>
                    <div className='offset-md-6'>
                        <p className=''><b>Pagina : </b>{this.state.user.current_page} <b>de </b>  {this.state.user.per_page} <b>Total de datos mostrado :</b> {this.state.user.total} </p>
                    </div>
                </div>

            </>
        )
    }
}
export default User;