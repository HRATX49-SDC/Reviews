import React from 'react';

const Form = (props) => {
  return (
    <>
      <div className="grid center middle tall image" >
            <div className="card small">
                <div className="content">
                    {/* <div className="logo" style={{ backgroundImage: `url(${this.state.logo})` }}></div> */}
                    <form onSubmit={props.submitReview}>
                        <div className="group">
                            <label>Name</label>
                            <input type="text" value={props.formData.author} onChange={(e) => props.changeField(e, 'author')} />
                        </div>
                        <div className="group">
                            <label>Title</label>
                            <input type="text" value={props.formData.title} onChange={(e) => props.changeField(e, 'title')} />
                            {/* <span style={{color:"red"}}>{this.state.emailError}</span> */}
                        </div>
                        <div className="group">
                            <label>Recommendation</label>
                            <textarea type="text" value={props.formData.password} onChange={(e) => props.changeField(e, 'recommendation')} />
                        </div>
                        <div className="group">
                            <label>Would you recommend this cat?</label>
                            <input type="checkbox" checked="checked" value={props.formData.recommendation} onChange={(e) => props.changeField(e, 'recommendation')} />
                            {/* <span style={{color:"red"}}>{this.state.emailError}</span> */}
                        </div>
                        {/* <div className="group">
                            <label>Location</label>
                            <input type="text" value={props.formData.recommendation} onChange={(e) => props.changeField(e, 'location')} />
                        </div> */}
                        {/* <div className="group">
                            <label>Profile Picture</label>
                            <input type="file" />
                        </div> */}

                        <button className="primary">Submit</button>
                    </form>
                    {/* <span style={{color:"red"}}>{this.state.errorMsg}</span> */}
                    <p className="footer">
                        {/* Already have an account? <Link to="/login">Login</Link> */}
                    </p>
                </div>
            </div>
        </div>
    </>
  
  )
}

export default Form;

// style={{ backgroundImage: `url(${})` }}
{/* <span style={{color:"red"}}>{this.state.errorMsg}</span> */}