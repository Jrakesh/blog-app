<h1>rails4.2-devise-bootstrap blog-app</h1>

<p>This is a <strong>rails v4.2</strong> blog app with bootstrap as the UI framework. 
<p>Points to ponder:</p>
<ul>
	<li>Devise for registration and authentication.</li>
	<li>Bootstrap integration</li>
	<li>Blog CRUD management functionality.</li>
	<li>User can share blogs, add photos and send email.</li>
	<li>Test scenarios and docs covered.</li>
</ul>

<h3>Installation</h3>

<h5>Add a new config/database.yml file and in the command line run:</h5> 
<pre>
bundle
rake db:setup
</pre>

<p>This will install the gems specified in <strong>Gemfile</strong> and create the tables in the database.

<h5>To start the server:</h5>
<pre>
rails s
</pre>

<p>You can enjoy the magic after signing-in.</p>
