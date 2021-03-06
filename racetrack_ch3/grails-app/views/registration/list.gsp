  
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
         <meta name="layout" content="main" />
         <title>Registration List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link action="create">New Registration</g:link></span>
        </div>
        <div class="body">
           <h1>Registration List</h1>
            <g:if test="${flash.message}">
                 <div class="message">
                       ${flash.message}
                 </div>
            </g:if>
           <table>
             <thead>
               <tr>
               
                   	    <g:sortableColumn property="id" title="Id" />
                  
                   	    <g:sortableColumn property="name" title="Name" />
                  
                   	    <g:sortableColumn property="dateOfBirth" title="Date Of Birth" />
                  
                   	    <g:sortableColumn property="gender" title="Gender" />
                  
                   	    <g:sortableColumn property="postalAddress" title="Postal Address" />
                  
                   	    <g:sortableColumn property="emailAddress" title="Email Address" />
                  
                        <th></th>
               </tr>
             </thead>
             <tbody>
               <g:each in="${registrationList}">
                    <tr>
                       
                            <td>${it.id?.encodeAsHTML()}</td>
                       
                            <td>${it.name?.encodeAsHTML()}</td>
                       
                            <td>${it.dateOfBirth?.encodeAsHTML()}</td>
                       
                            <td>${it.gender?.encodeAsHTML()}</td>
                       
                            <td>${it.postalAddress?.encodeAsHTML()}</td>
                       
                            <td>${it.emailAddress?.encodeAsHTML()}</td>
                       
                       <td class="actionButtons">
                            <span class="actionButton"><g:link action="show" id="${it.id}">Show</g:link></span>
                       </td>
                    </tr>
               </g:each>
             </tbody>
           </table>
               <div class="paginateButtons">
                   <g:paginate total="${Registration.count()}" />
               </div>
        </div>
    </body>
</html>
