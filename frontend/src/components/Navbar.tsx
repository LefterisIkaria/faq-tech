import { Navbar, Nav, Container, Dropdown, Form } from "react-bootstrap";
import { SunFill, MoonFill } from "react-bootstrap-icons";
import { useTheme } from "../contexts/ThemeContext";
import { NavLink } from "react-router-dom";

function NavBar() {
  const { theme, toggleTheme } = useTheme();

  return (
    <Navbar expand="md" bg={theme}>
      <Container fluid="sm">
        <Navbar.Brand className="fw-bold fs-3" href="#home">
          FAQTech.
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="menu" />

        <Navbar.Collapse className="justify-content-between align-items-baseline" id="menu">
          <Nav variant="underline" className="text-center gap-2">
            <Nav.Link as={NavLink} to="/">
              Home
            </Nav.Link>
            <Nav.Link as={NavLink} to="/about">
              About
            </Nav.Link>
            <Nav.Link as={NavLink} to="/help">
              Help
            </Nav.Link>
          </Nav>

          <Nav.Item className="d-flex align-items-center justify-content-center gap-3">
            <Dropdown drop="down-centered">
              <Dropdown.Toggle className="d-flex align-items-center gap-1" variant={theme} id="dropdown-basic">
                <Navbar.Text>Lefteris Pap.</Navbar.Text>
              </Dropdown.Toggle>

              <Dropdown.Menu>
                <Dropdown.Item as={NavLink} to="/profile">
                  Profile
                </Dropdown.Item>
                <Dropdown.Item as={NavLink} to="/logout">
                  Logout
                </Dropdown.Item>
              </Dropdown.Menu>
            </Dropdown>

            <Form.Check
              type="switch"
              id="custom-switch"
              label={theme === "dark" ? <SunFill /> : <MoonFill />}
              checked={theme === "dark"}
              onChange={toggleTheme}
              reverse
            />
          </Nav.Item>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default NavBar;
