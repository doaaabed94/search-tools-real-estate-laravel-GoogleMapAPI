<?php 










// define link for assets of admin ( styles and scripts )
if (!function_exists('aurl')) 
{
    function aurl()
    {
        return url("/");
    }
}

if (!function_exists('diren')) 
{
    function diren()
    {
         return "dir-".app()->getLocale();
    }
}







// ( function adminAuth() => this function return object of admin if he is authunicated ) 
if (!function_exists('adminAuth')) 
{
    function adminAuth()
    {
        return auth()->guard('admin');
    }
}


if (!function_exists('admin')) 
{
    function admin()
    {
        return auth()->guard('admin')->user();
    }
}

// slug ( url ) 

if (!function_exists('slug')) 
{
    function slug($slug)
    {
        if($slug)
        {
            $except = array('\\', '/', ':', '*', '?', '"', '<', '>', '|', ' ', '+', '&', '#', ';');
            return str_replace($except, '-', $slug);
        }
    }
}





// html 

// create td of table
if (!function_exists('create_td')) 
{
    function create_td($name,$img=null)
    {
        if($img)
        {
            return "<td> <img src='".$name."' class='img-thumbnail' width='100' height='100'> </td>";
        }
        return "<td>".$name."</td>";
        
    }
}




// create td of table
if (!function_exists('create_th')) 
{
    function create_th($name)
    {
        return "<th>".$name."</th>";
    }
}




//  make links of sidebar active 
if (!function_exists('SA')) 
{
    function SA($segment,$child_menu = null)
    {

        // second link  ( like add or view)
        if($child_menu)
        {
            if(Request::segment('2') == $segment && Request::segment('3') == $child_menu)
             {
                return "active";
             }
        }// end second link
        else
        {
            // first link link ( like categories or products)
            if(Request::segment('3') == $segment)
            {
                return "active";
            }
         
        } // end second link

    } // end function
}




if(!function_exists('renameImage'))
{
  function renameImage($request, $inputName)
  {
    return uniqid(). '.'. $request->file($inputName)->getClientOriginalExtension();
  }
}















