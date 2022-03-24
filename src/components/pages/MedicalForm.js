import React from 'react'
import { Link } from 'react-router-dom'
import { Component } from 'react'

import '../../App.css'
import '../../StyleSheet.css'

import BackgroundImage from '../../assets/images/Light_BG.jpg'

/*
NOTE:-
A much bigger medical report was made and executed, but during development,
It was notcied, we run out of gas fees.
This is a very expensive process, and to reduce the number of 
data storred in a contract, a bare minimal medical form was made
deployed as a prototype-ONLY
*/

const Form_Type = {
	width: 350
}

const HeaderStyle = {
// 	 width: "100%",
//     background: `url(${BackgroundImage})`,
//      backgroundPosition: "center",
//      backgroundRepeat: "no-repeat",
//      backgroundSize: "cover"
}

class MedicalForm extends Component {
    render() {
        return (
			<div className="text-center m-5-auto" style={HeaderStyle}>
                <h2>Medical Form</h2>
                <h5>Enter Once and for all, with the option of editing anytime.</h5>
                <form id="Medical_Form" style={ Form_Type } 
                onSubmit={(event) => {
                    event.preventDefault()

                    const name = this.Fname.value
                    //this.props.uploadName(name)
					
					const mail = this.mail.value

					const ph_no = this.phno.value
                    //this.props.uploadPhno(ph_no)

                    const gen = this.gender.value
                    //this.props.uploadGender(gen)

					const date = this.date.value
					const height = this.height.value
					const weight = this.weight.value
					const blood = this.blood.value
					const vacc = this.vacc.value
					const all = this.all.value
					const pres = this.pres.value
					const sym = this.sym.value
					const trav = this.trav.value
					const his = this.his.value
					const ename = this.ename.value
					const eno = this.eno.value;
					const ex = this.ex.value;


					//this.props.uploadForm(name, mail, ph_no, gen, date, height, weight, blood, vacc, all, pres, sym, trav, his, ename, eno, ex)
					this.props.uploadMedicalForm(name, mail, ph_no, gen, date, height, weight, blood, vacc, all, pres, sym, trav, his, ename, eno, ex)
				}}>
				<p>
                    <label>Full Name</label><br/>
                    {/* <input id = "Fname" type="text" name="full_name" defaultValue={this.props.fullname} ref={(input) => { this.Fname = input }} required/> */}
					<input id = "Fname" type="text" name="full_name" defaultValue={this.props.fullname} ref={(input) => { this.Fname = input }} required/>
                </p>
				<p>
                    <label>Email ID</label><br/>
					<input id = "mail" type="text" name="full_name" defaultValue={this.props.mail} ref={(input) => { this.mail = input }}/>
                </p>
				<p>
					<label>Phone number</label><br/>
					{/* <input type="text" name="ph_no" defaultValue={this.props.phno} ref={(input) => { this.phno = input }}/> */}
					<input id = "phno" type="text" name="ph_no" defaultValue={this.props.phno} ref={(input) => { this.phno = input }}/>
				</p>
				<p>
				<label>Gender</label><br/>
				{/* <input type="text" name="gender"  defaultValue={this.props.gender} ref={(input) => { this.gender = input }}/> */}
				<input id = "gender" type="text" name="gender"  defaultValue={this.props.gender} ref={(input) => { this.gender = input }}/>
				</p>
				<p>
                    <label>Date of Birth(DD/MM/YYYY)</label><br/>
					<input id = "date" type="text" name="full_name" defaultValue={this.props.date} ref={(input) => { this.date = input }}/>
                </p>
				<p>
                    <label>Height(mention unit)</label><br/>
					<input id = "height" type="text" name="full_name" defaultValue={this.props.height} ref={(input) => { this.height = input }}/>
                </p>
				<p>
                    <label>Weight(mention unit)</label><br/>
					<input id = "weight" type="text" name="full_name" defaultValue={this.props.weight} ref={(input) => { this.weight = input }}/>
                </p>
				<p>
                    <label>Blood group</label><br/>
					<input id = "blood" type="text" name="full_name" defaultValue={this.props.blood} ref={(input) => { this.blood = input }}/>
                </p>
				<p>
                    <label>Vaccination status</label><br/>
					<input id = "vacc" type="text" name="full_name" defaultValue={this.props.vacc} ref={(input) => { this.vacc = input }}/>
                </p>
				<p>
                    <label>Allegry</label><br/>
					<input id = "all" type="text" name="full_name" defaultValue={this.props.all} ref={(input) => { this.all = input }}/>
                </p>
				<p>
                    <label>Current Prescription</label><br/>
					<input id = "pres" type="text" name="full_name" defaultValue={this.props.pres} ref={(input) => { this.pres = input }}/>
                </p>
				<p>
                    <label>Current Symptoms</label><br/>
					<input id = "sym" type="text" name="full_name" defaultValue={this.props.sym} ref={(input) => { this.sym = input }}/>
                </p>
				<p>
                    <label>Recent Travels?(past 6 months)</label><br/>
					<input id = "trav" type="text" name="full_name" defaultValue={this.props.trav} ref={(input) => { this.trav = input }}/>
                </p>
				<p>
                    <label>Family/Ancestoral ailments</label><br/>
					<input id = "his" type="text" name="full_name" defaultValue={this.props.his} ref={(input) => { this.his = input }}/>
                </p>
				<p>
                    <label>Emergency Contact Name</label><br/>
					<input id = "ename" type="text" name="full_name" defaultValue={this.props.ename} ref={(input) => { this.ename = input }}/>
                </p>
				<p>
                    <label>Emergency Contact number</label><br/>
					<input id = "eno" type="text" name="full_name" defaultValue={this.props.eno} ref={(input) => { this.eno = input }}/>
                </p>
				<p>
                    <label>Other relevant Information</label><br/>
					<input id = "ex" type="text" name="full_name" defaultValue={this.props.ex} ref={(input) => { this.ex = input }}/>
                </p>
			<p>
			{/* <input type="checkbox" name="checkbox" id="checkbox" required />  */}
			<span>We value your privacy!<br/> 
			{/* <a href="https://google.com" target="_blank" rel="noopener noreferrer">
				Click here to read terms of service
				</a> */}
				<Link to="/termsOfService"> Click here to read terms of service</Link>
				</span>.
		</p>
		<p>
			<button id="sub_btn" type="submit">Confirm Changes</button>
			<div className='Submit_footer'>
			<br/>Note: - To see the saved the changes, Refresh the home page before.
			</div>
		</p>
	</form>
	<footer>
		<p><Link to="/">Back to Homepage</Link>.</p>
	</footer>
	{/* <footer className='Form_Footer'>
		NOTE: - The medical form has been intentionally limited in input and size.<br/>
		If any more data was saved on the contract, metamask may prevent it as its very expensive.<br/>
		For user testing and convenience, the form has been shortened.
	</footer> */}
</div>);
	}
}

export default MedicalForm;
// export default function form() {
//     return (
//         <div className="text-center m-5-auto">
//             <h2>Medical Form</h2>
//             <h5>Enter Once and for all, with the option of editing anytime.</h5>
//             <form action="/home" id="Medical_Form" style={ Form_Type }>
//                 <p>
//                     <label>Full Name</label><br/>
//                     <input type="text" name="full_name" required />
//                 </p>
// 				<p>
//                     <label>Phone number</label><br/>
//                     <input type="text" name="ph_no" required />
//                 </p>
//                 <p>
//                     <label>Gender</label><br/>
//                     <input type="text" name="gender" requiredc />
//                 </p>
// 				<p>
//                     <label>Date of Birth</label><br/>
//                     <input type="text" name="DOB" requiredc />
//                 </p>
//                 <p>
//                     {/* <input type="checkbox" name="checkbox" id="checkbox" required />  */}
// 					<span>We value your privacy!<br/> 
// 					<Link to="/termsOfService"> Click here to read terms of service</Link>
// 					</span>.
//                 </p>
//                 <p>
//                     <button id="sub_btn" type="submit">Submit</button>
//                 </p>
//             </form>
//             <footer>
//                 <p><Link to="/">Back to Homepage</Link>.</p>
//             </footer>
//         </div>
//     )
// }