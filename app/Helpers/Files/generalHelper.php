<?php 


if (!function_exists('lang')) 
{
    function lang()
    {
        $current_locale = app()->getLocale();
        $current_lang = App\Models\Lang::select('id')->where('slug', $current_locale)->first();

        return $current_lang['id'];
    }
}



// display image from uploads folder
if (!function_exists('getImg')) 
{
    function getImg($path) 
    {
        return url('uploads/'.$path.'/');
    }
}





// select option from select element
if (!function_exists('typeSelect')) 
{
    function typeSelect($select_id,$item_id) 
    {
        if($select_id == $item_id)
        {
            return "selected";
        }
    }
}

// select option from select element
if (!function_exists('getDir')) 
{
    function getDir() 
    {
        $current_locale = app()->getLocale();
        if($current_locale == 'ar') 
            return 'r'; 
        else 
            return 'l'; 
    }
}

// select option from select element
if (!function_exists('getInvDir')) 
{
    function getInvDir() 
    {
        $current_locale = app()->getLocale();
        if($current_locale == 'ar') 
            return 'l'; 
        else 
            return 'r'; 
    }
}

// select option from select element
if (!function_exists('adminLang')) 
{
    function adminLang() 
    {
        return auth()->guard('admin')->user()->lang->id;
    }
}






// display json data in blade 
if (!function_exists('json_data')) 
{
    function json_data($json_data,$field) 
    {
        if($json_data)
        {
            if(isset($json_data->$field))
            {
                return $json_data->$field;
            }
            else
            {
                return '';
            }
        }
    }
}



define("UPLOADS_PATH", 'uploads/');
define("ALBUM_PATH", 'album/');
define("SETTING_PATH", 'settings/');
define("ADMIN_PATH", 'admins/');
define("BLOGPOST_PATH", 'blog-posts/');
define("PROJECT_PATH", 'projects/');
define("REGION_PATH", 'regions/');
define("PROJECT_PLAN_PATH", 'project-plans/');
define("PROP_FLAT_PATH", 'prop-flats/');
define("PROP_VILLA_PATH", 'prop-villas/');
define("PROP_LAND_PATH", 'prop-lands/');
define("PROP_MARKET_PATH", 'prop-markets/');
define("SLIDER_PATH", 'sliders/');
define("TESTIMONIAL_PATH", 'testimonials/');
define("VIDEO_PATH", 'videos/');
define("PlAYLIST_PATH", 'playlists/');
define("SITE_CONTENT_PATH", 'site-contents/');
define("PARTNER_PATH", 'partners/');
define("SER_PATH", 'services/');
define("ACHIEVEMENT_PATH", 'achievements/');
define("LANDING_PATH", 'landings/');
define("LANDING_FEATURE_PATH", 'landings/features/');
define("LANDING_OPTION_PATH", 'landings/options/');
define("TEAM_PATH", 'teams/');
define("ADV_PATH", 'advs/');
define("ICON_PATH", 'icons/');
define("PROJECT_IMG_PATH", 'project/');
define("PROJECT_VIDEO_PATH", 'projectVideo/');










