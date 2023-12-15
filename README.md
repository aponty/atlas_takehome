# atlas_takehome


A simple news/blog mockup using a React frontend and Rails backend.


## To Run


in /backend, `bundle install && rails db:setup && rails s`   
in /frontend, `npm install && npm start`


## Notes


Data flow is managed through GQL. Overkill, but the modularity of one fetch per screen, with self-typing code & self-documenting what each component uses, is wonderful. Definitely nicer than any React state management systems still out there (Redux, context, etc).


Apollo client is the GQL client on the frontend. I set up infinite scrolling using paginated queries on the backend to fetch sequential chunks, and configuring Apollo to merge new articles into the existing cache on each refetch.


I also set up React Router, to enable keyboard navigation (back button) that users will expect in a web env, and to enable deep linking, which is very useful for marketing, link-sharing, and SEO purposes.


Frontend has a typical reactive design. In an actual production env, I'd do more work to set up constants for colors and for sharing breakpoints for screen sizes, as well building out more base-level UI components to help enforce branding standards. But building a UI library seemed out-of-scope.


While I do (of course) prefer working off Figma files with clear design goals and standards, I hope this demonstrates that I'm capable of producing something functional and clean in the absence of it. A fun little project!

