import React from "react"
import {Navbar, NavbarBrand, NavbarContent, NavbarItem, Link, Button} from "@nextui-org/react";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import Image from "next/image";
// @ts-ignore
import logo from "~/public/lita.svg?url"

const Header = () => {
  return (
    <Navbar isBordered>
      <NavbarBrand>
        <Image src={logo} alt="logo" width={64} height={64}/>
      </NavbarBrand>
      <NavbarContent justify="start">
        <NavbarItem>
          <Link href="/">
            Home
          </Link>
        </NavbarItem>
      </NavbarContent>
      <NavbarContent justify="end">
        <NavbarItem>
          <Button as={Link} href="/configuration">
            <FontAwesomeIcon icon={["fas", "gear"]} />
          </Button>
        </NavbarItem>
      </NavbarContent>
    </Navbar>
  )
}

export default Header;
