import { Outlet } from "react-router-dom";
import Navbar from "../components/Navbar";
import ViewAllJobs from "../components/ViewAllJobs";

const MainLayout = () => {
  return (
    <>
      <Navbar />
      <Outlet />
      <ViewAllJobs />
    </>
  );
};

export default MainLayout;
