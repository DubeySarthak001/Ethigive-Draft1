import React from 'react';
import { useHistory } from 'react-router-dom';
import './Project.css';

export default function Project({ name, location, description, amountRaised, image }) {
    const history = useHistory();

    const handleBack = () => {
        history.goBack();
    };

    return (
        <div className='project-container'>
            <button className='back-button' onClick={handleBack}>Back</button>
            <div className='project-image'>
                <img src={image} alt={name} />
            </div>
            <div className='project-details'>
                <h2 className='project-name'>{name}</h2>
                <h4 className='project-location'>{location}</h4>
                <p className='project-description'>{description}</p>
                <p className='project-amount'>Amount Raised: ${amountRaised}</p>
            </div>
        </div>
    );
}
