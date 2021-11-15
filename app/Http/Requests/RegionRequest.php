<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegionRequest extends FormRequest
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
                    'city_id'       => 'required|numeric|exists:cities,id',
                    'name'          => 'required|string|max:50|unique:regions,name',
                ];


            break;


            //  editing data 
            case 'PUT':
                        
                return [
                    'city_id'       => 'required|numeric|exists:cities,id',
                    'name'          => 'required|string|max:50|unique:regions,name,' . Request('id'),
                ];


            break;
        }
    }
}
