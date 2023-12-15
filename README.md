# atlas_takehome


A simple news app/blog mockup using a React frontend and Rails backend.


## To Run


in /backend, `bundle install && rails db:setup && rails s`   
in /frontend, `npm install && npm start`


## Notes

Data flow is managed through GQL. Overkill in this case, but I like the performance and modularity of one fetch per screen, as well as the ease of typing and how it acts as documentation for each component's data dependencies. It also reduces/eliminates need for a state managment system like Redux (which would also be overkill in this case).

I set up infinite scrolling using paginated queries on the backend to fetch sequential chunks, and configured Apollo to merge new articles into the existing cache on each refetch.

I also set up React Router, to enable keyboard navigation (back button) that users will expect in a web env, and to enable deep linking, which is very useful for marketing, link-sharing, and SEO purposes.

Frontend has a typical mobile-first reactive design. While I do prefer working off Figma or other design docs, I hope this demonstrates that I'm capable of producing something functional and clean in the absence of it. A fun little project!

## To-Do (for a production env)

### UI Library & Branding

It would be good to set up constants for colors and for screen breakpoints, as well building out more base-level UI components to help enforce branding standards. But building a UI library seemed out-of-scope.

### Testing

Given the size of the project, and recommended time spent on it, I didn't set up a testing framework and have relied on manual testing instead. GQL in particular does add configuration overhead to creating and writing tests. In a production environment I would strongly prefer to have unit and integration tests.

### Logging/Monitoring

Need to track user experices (including errors) if we're going to improve them! My go-tos are either Datadog or Amplitude + Sentry, but there are cheaper options as well.



