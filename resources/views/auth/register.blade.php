@extends('layouts.app')

@section('content')

        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>

                <div class="panel-body">
                   <form action="{{ route('register') }}" method="POST">
                       {{ csrf_field() }}
                       <label for="Email">Email</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-envelope"></i> </span>
                           <input type="email" name="email" class="form-control" placeholder="example@example.com" value="{{ old('email') }}" required>
                       </div>

                       <label for="username">Username</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-user"></i> </span>
                           <input type="text" name="username" class="form-control" placeholder="Ex : User_name" value="{{ old('username') }}" required>
                       </div>

                       <label for="firstname">Firstname</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-user"></i> </span>
                           <input type="text" name="first_name" class="form-control" placeholder="John" value="{{ old('first_name') }}" required>
                       </div>

                       <label for="lastname">Lastname</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-user"></i> </span>
                           <input type="text" name="last_name" class="form-control" placeholder="Doe" value="{{ old('last_name') }}" required>
                       </div>

                       <label for="location">Location</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-map-marker"></i> </span>
                           <input type="text" name="location" class="form-control" placeholder="United States" value="{{ old('location') }}" required>
                       </div>

                       <label for="password">Password</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-lock"></i> </span>
                           <input type="password" name="password" class="form-control" placeholder="Password" value="{{ old('password') }}" required>
                       </div>

                       <label for="password-confirmation">Password Confirmation</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-lock"></i> </span>
                           <input id="password-confirmation" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password" required>
                       </div>

                       <label for="dob">Date Of Birth</label>
                       <div class="input-group">
                           <span class="input-group-addon"><i class="fa fa-birthday-cake"></i> </span>
                           <input id="dob" type="date" class="form-control" name="dob" placeholder="date of birth" required>
                       </div>

                       <div style="margin-top: 10px" class="input-group">

                               <button type="submit" class="btn btn-success btn-block">
                                   Register
                               </button>

                       </div>

                   </form>
                </div>
            </div>
        </div>

@endsection
