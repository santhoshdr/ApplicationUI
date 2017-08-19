<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
		<div class="panel-body">
	        <div class="formcontainer">
	            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
	            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
	            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
	                <input type="hidden" ng-model="ctrl.user.id" />
	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="uname">Name</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.name" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
	                        </div>
	                    </div>
	                </div>

	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="age">Age</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.age" id="age" class="form-control input-sm" placeholder="Enter your Age." required ng-pattern="ctrl.onlyIntegers"/>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="emailid">Email ID</label>
	                        <div class="col-md-7">
	                            <input type="email" ng-model="ctrl.user.emailid" id="emailid" class="form-control input-sm" placeholder="Enter your Email ID." required ng-pattern="ctrl.string"/>
	                        </div>
	                    </div>
	                </div>


	                      <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="state">State </label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.state" id="state" class="form-control input-sm" placeholder="State" required ng-pattern="ctrl.string"/>
	                        </div>
	                    </div>
	                </div>


					
					      <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="country">Country </label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.country" id="country" class="form-control input-sm" placeholder="Country" required ng-pattern="ctrl.string"/>
	                        </div>
	                    </div>
	                </div>
	                
	                
	                      <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="phone_number">Phone Number</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.phone_number" id="phone_number" class="form-control input-sm" placeholder="Phone Number" required ng-pattern="ctrl.onlyIntegers"/>
	                        </div>
	                    </div>
	                </div>
	                

             <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="address">Address</label>
	                        <div class="col-md-7">
	                            <input type="textarea" ng-model="ctrl.user.address" id="address" class="form-control input-sm" placeholder="Address" required ng-pattern="ctrl.string	"/>
	                        </div>
	                    </div>
	                </div>


	                <div class="row">
	                    <div class="form-actions floatRight">
	                        <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
	                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
	                    </div>
	                </div>
	            </form>
    	    </div>
		</div>	
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Users </span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		            <thead>
		            <tr>
		                <th>ID</th>
		                <th>NAME</th>
		                <th>AGE</th>
		                <th>SALARY</th>
		                <th width="100"></th>
		                <th width="100"></th>
		            </tr>
		            </thead>
		            <tbody>
		            <tr ng-repeat="u in ctrl.getAllUsers()">
		                <td>{{u.id}}</td>
		                <td>{{u.name}}</td>
		                <td>{{u.age}}</td>
		                <td>{{u.salary}}</td>
		                <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
		                <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
		            </tr>
		            </tbody>
		        </table>		
			</div>
		</div>
    </div>
</div>