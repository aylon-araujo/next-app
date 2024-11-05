import { FC, ReactNode } from 'react';
import Header from '../components/header';
import Sidebar from '../components/sidebar';
import Main from '../components/main';
import Footer from '../components/footer';

const Layout: FC<{ children: ReactNode }> = ({ children }) => {
  return (
    <>
      <Header />
      <Sidebar />
      <Main>{children}</Main>
      <Footer />
    </>
  )
}

export default Layout;
