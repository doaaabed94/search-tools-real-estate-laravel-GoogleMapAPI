<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OfferOrderRequest extends FormRequest
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
                    'client_name'                       => 'required|string|max:50',
                    'prop_type'                         => 'nullable|in:villa,duplex,land,store,office',
                    'region_id'                         => 'nullable|numeric|exists:regions,id',
                    'number_of_rooms_id'                => 'nullable|numeric|exists:number_of_rooms,id',
                    'prop_status'                       => 'nullable|in:ready,under_construction,ready_in_6_months',
                    'expected_price'                    => 'nullable|integer',
                    'payment'                           => 'nullable|in:cash,install,cash_install',
                    'look'                              => 'nullable|in:sea,city,forest,bosphorus',
                    'nationality'                       => 'nullable|string|max:50',
                    'interested_in_turkish_citizenship' => 'nullable|in:no,yes',
                    'purpose_of_purchase'               => 'nullable|in:investment,residence_investment,family_house,vacationing',
                    'urgent'                            => 'nullable|in:no,yes,normal',
                    'notes'                             => 'nullable|string',
                    'date_visit'                        => 'nullable|date'
                ];


            break;


            //  editing data 
            case 'PUT':
                        
                return [
                    'client_name'                       => 'required|string|max:50',
                    'prop_type'                         => 'nullable|in:villa,duplex,land,store,office',
                    'region_id'                         => 'nullable|numeric|exists:regions,id',
                    'number_of_rooms_id'                => 'nullable|numeric|exists:number_of_rooms,id',
                    'prop_status'                       => 'nullable|in:ready,under_construction,ready_in_6_months',
                    'expected_price'                    => 'nullable|integer',
                    'payment'                           => 'nullable|in:cash,install,cash_install',
                    'look'                              => 'nullable|in:sea,city,forest,bosphorus',
                    'nationality'                       => 'nullable|string|max:50',
                    'interested_in_turkish_citizenship' => 'nullable|in:no,yes',
                    'purpose_of_purchase'               => 'nullable|in:investment,residence_investment,family_house,vacationing',
                    'urgent'                            => 'nullable|in:no,yes,normal',
                    'notes'                             => 'nullable|string',
                    'date_visit'                        => 'nullable|date',
                    'link'                              => 'nullable|string'
                    
                ];


            break;
        }
    }
}
