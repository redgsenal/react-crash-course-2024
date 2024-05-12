import React from 'react'

const App = () => {
  const name = 'Reggie';
  const months = ['Jan', 'Feb', 'Mar'];
  const loggedIn = false;
  const styles = { color: 'blue', fontSize: '28px'}

  return (
    <>
    <div className='text-5xl'>App</div>
    <p style={styles}>{ name }</p>
    <ul>
      { months.map((month, index) => (
        <li key={index}>{month}</li>
      ))}
    </ul>
    { loggedIn && <h1>Hey! { name }</h1> }
    </>
  )
}

export default App