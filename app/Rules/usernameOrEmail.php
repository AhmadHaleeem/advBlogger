<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class usernameOrEmail implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        if(filter_var($value, FILTER_VALIDATE_EMAIL)) {
            return request()->validate([
               $attribute => ['required', 'email', 'regex:/^(.*)@(gmail|yahoo|hotmail)\.com/i']
            ], ['email.regex'   => 'Invalid Domain']); // this is to display the error message for domain (1)
        } elseif(preg_match('/^[a-zA-Z-_]*$/ ', $value)) {
            return request()->validate([
               $attribute => 'required|alpha_dash|min:5|max:32'
            ]);
        }
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        // return 'Invalid Domain';  this is to display the error message for domain (2)
        return 'The validation error message.';
    }
}
