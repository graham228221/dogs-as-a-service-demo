# Dogs as a Service demo

This is a quick API callout demo in Salesforce. It adds a random dog to Accounts, using https://dog.ceo/dog-api/.

Setup Instructions:
1. <a href="https://login.salesforce.com/packaging/installPackage.apexp?p0=04t4I0000011Tp8&isdtp=p1">Install the unmanaged package here.</a>
2. For Classic, add the "I want a puppy!" button to the page layout. For Lightning/Mobile, add the "I want a Puppy!" action to the Mobile and Lightning Experience Actions.
3. Add the Pets related list to your Account page layout/s, including the Pet Image field.
4. Give your users access to the Pets object and fields via Profiles or Permission Sets.

This package creates a new "Pets" custom object, and an "I want a puppy!" button to add new dogs to an account. This is more of a fun demo, and isn't really intended for production orgs.
