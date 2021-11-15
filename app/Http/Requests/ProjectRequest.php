<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProjectRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) 
        {

            // adding data 
            case 'POST':

                return [
                    'name'                              => 'required|string|max:50',
                    'region_id'                         => 'nullable|numeric|exists:regions,id',                    
                    'image_pro'                          => 'nullable',
                    'image_pro.*'                        => 'image|mimes:png,jpg,jpeg,gif|max:100000',
                    'video'                          => 'required|mimes:mp4,mov,ogg |max:10000',
                    'video.*'                        => 'required|mimes:mp4,mov,ogg | max:10000',

                    
                ];
            break;


            //  editing data 
            case 'PUT':
                        
                return [
                    'name'                              => 'required|string|max:50|unique:projects,name,' . Request('id'),
                    'region_id'                         => 'nullable|numeric|exists:regions,id',
                    'link'                              => 'nullable|url',
                    'project_type'                      => 'nullable',
                    'contact_person_name'               => 'nullable|string|max:150',
                    'contact_person_phone'              => 'nullable|string|max:150',
                    'number_of_rooms'                   => 'nullable|json',
                    'number_of_rooms_deleted'           => 'nullable|string',
                    'payment'                           => 'nullable|in:cash,cash_install',
                    'plan1_percentage'                  => 'nullable|integer',
                    'plan1_months'                      => 'nullable|integer',
                    'plan2_percentage'                  => 'nullable|integer',
                    'plan2_months'                      => 'nullable|integer',
                    'plan3_percentage'                  => 'nullable|integer',
                    'plan3_months'                      => 'nullable|integer',
                    'cash_discount'                     => 'nullable|numeric',
                    'prop_status'                       => 'nullable|in:ready,under_construction',
                    'delivery_date'                     => 'required_if:prop_status,under_construction|nullable|date',
                    'looks'                             => 'nullable|string|max:150',
                    'max_price_for_meter'               => 'nullable|integer',
                    'min_price_for_meter'               => 'nullable|integer',
                    'display_website'                   => 'nullable|integer',
                    'instalment_id_fk'                  => 'nullable',
                    'category_id_fk'                    => 'nullable',
                    'notes'                             => 'nullable',
                    'description'                       => 'nullable',
                    'img'                               => 'nullable|image|mimes:png,jpg,jpeg,gif|max:100000'
                ];
            break;

        }
    }
}
