import './Navbar.css'
import { useState } from 'react';
import { NavLink } from "react-router-dom";
import { ReactComponent as Logo } from '../logoipsum-263.svg'
import { Squash as Hamburger } from 'hamburger-react'

export default function Navbar() {
    const [showMobileNav, setShowMobileNav] = useState(false);

    return (
        <nav className="navbar">
            <div className="container">
                <div className="logo">
                    <NavLink to="/"><Logo /></NavLink>
                </div>
                <div className='mobile-nav-button' onClick={() => setShowMobileNav(!showMobileNav)}>
                    <Hamburger />
                </div>
                <div className={`nav-elements ${showMobileNav && 'toggled'}`}>
                    <ul>
                        <li>
                            <NavLink to="/">Articles</NavLink>
                        </li>
                        <li>
                            <NavLink to="/search">Search</NavLink>
                        </li>
                        <li>
                            <NavLink to="/settings">Settings</NavLink>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    )
}
