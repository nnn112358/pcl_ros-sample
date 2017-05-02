
#include <iostream>  
#include <pcl/io/pcd_io.h>  
#include <pcl/point_types.h>  
#include <pcl/visualization/cloud_viewer.h> 
  
int  main (int argc, char** argv)  
{  
  pcl::PointCloud<pcl::PointXYZ> cloud;  
    
  cloud.width    = 100;  
  cloud.height   = 100;  
  cloud.is_dense = false;  
  cloud.points.resize (cloud.width * cloud.height);  
  
  for (size_t i = 0; i < cloud.points.size (); ++i)  
  {  
    cloud.points[i].x = 4.0 * rand () / (RAND_MAX + 1.0);  
    cloud.points[i].y = 4.0 * rand () / (RAND_MAX + 1.0);  
    cloud.points[i].z = 4.0 * rand () / (RAND_MAX + 1.0);  
  }  

  pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");  
  viewer.showCloud (cloud.makeShared());  
  while (!viewer.wasStopped ()) {  
  }  
  
  return (0);  
} 



