<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class NumberOfRoomRequest extends FormRequest
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
                    'name'          => 'required|string|max:50|unique:number_of_rooms,name',
                ];


            break;


            //  editing data 
            case 'PUT':
                        
                return [
                    'name'          => 'required|string|max:50|unique:number_of_rooms,name,' . Request('id'),
                ];


            break;
        }
    }
}
