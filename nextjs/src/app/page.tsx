import React from 'react';
import Link from 'next/link'
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';

const Homepage = () => {
  return (
    <div>
      Homepage
      <div>
        <Link href='/configuration'>
          <FontAwesomeIcon icon={["fas", "gear"]} />
        </Link>
      </div>
    </div>
  )
}

export default Homepage;
