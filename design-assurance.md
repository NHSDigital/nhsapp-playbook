# Design assurance reviews
 


## Introduction

### What is a design assurance review?
 
Design assurance reviews are a mandatory element of the NHS App's governance process meant to help the team produce great work by providing a structured approach to both feedback and quality assurance. 
The format is modelled on the [GDS service assessment](https://www.gov.uk/service-manual/service-assessments) process, but it has been paired down and simplified to fit our context. While service assessments are focussed on whether a service meets the [NHS service standard](https://service-manual.nhs.uk/standards-and-technology/service-standard), design assurance reviews also cover how a specific piece of work fits into the context of the NHS App (which is to say that it is entirely possible for a project to meet all of the criteria outlined in the service standard but still require changes because the way it has been designed conflicts with how other parts of the NHS App work). Design assurance reviews also should not be as gruelling as a normal service assessment – if they are scary, we're doing it wrong! 

To quote the guidance for GDS service assessments, "\[...\] The panel is not there to catch you out. They offer a peer review of the work you’ve done and help you understand anything you’ll need to change or improve." Implied in that statement is that the panel will have advice, recommendations about how to improve the work, and potentially change requests that are mandatory. 

### Why are reviews important?
 
In the NHS App programme, it is expected that all UCD people will be getting feedback about their work on a regular basis. Most feedback can be handled in peer review sessions that take place in regular huddles or as one-off events, however given the scale and complexity of the work we do, there is a need to also review work in a more holistic, structured manner. 

The primary difference between peer review sessions and design assurance reviews is:

- Peer review sessions typically focus on a specific question that a designer wants feedback about and are initiated by the designer who is seeking feedback
- Design assurance reviews are focussed on providing holistic feedback that considers all aspects of the service design in the context of the NHS service standard and are mandatory at a specific point of the project lifecycle 
The goal is to provide a supportive environment, ensure we apply the NHS service standard consistently, and review work in the proper context. 




## Setup

### What work needs to be reviewed?
 
Design assurance reviews are required for all new functionality and design patterns. 

Things that require a design assurance review:

- A new feature that has never existed in the App before, such as filtering tools for the message inbox
- A new design pattern that has never existed in the App before, such as a confirmation page pattern
- A revision to an existing feature that is significant enough to change how the functionality works, such as redesigning the GP appointment booking flow 
Things that do not require a design assurance review:
- New instances of a previously reviewed and approved design pattern, such as how online consultations are integrated
- New styles or components being considered for incorporation into the design system (there is a separate process for this)
- Revisions based on an accessibility audit
- Changes to support an urgent fix to the live system 
If you aren't sure whether the work you're doing needs a design assurance review, just ask [Michael Gallagher](/display/~michael.gallagher10@nhs.net), [Simon Davis](/display/~simon.davis@nhs.net), or [Auriol Palladino](/display/~auriol.palladino1@nhs.net).

### When do reviews happen?
 
Design assurance reviews happen when the team have completed at least one round of prototype explorations and have settled on a chosen design solution. The team should have been through at least one content and interaction design crit. The sweet spot for a design assurance review is about 70–75% of the way through the phase of work. At that point the work will be mature enough for the panel to provide considered feedback but not so far along that there won't be any time (or appetite) for changes. It can be a little earlier or later in the process, but try to avoid letting it go beyond ≈85% complete. 

The panel would expect to be shown the multiple design options that you have considered, along with the design you are proposing to move forward with as a release candidate. 

There is protected time for design assurance reviews every Tuesday from 14:00 to 16:00. 

You should discuss whether your current work needs a review with the app's lead researcher and/or designer early in the design process. This will also make it easier to arrange a panel in advance and pencil in a rough estimate for when the review might happen. Scheduling the review is the responsibility of UCD squad leads. [Check out the review calendar page for more information](/spaces/NO/pages/930362820/Review+calendar+and+candidates). 

Preparation for the review shouldn't be onerous. Expect to set aside a day or two for the prep work. 

### Who participates in a review?
 
Due to their holistic nature, design assurance reviews necessarily involve a multi-disciplinary panel. With three exceptions, the panel members for a design assurance review are not a fixed group or the same for every single review. 
The panel must include the NHS App's lead designer, lead user researcher, lead content designer, a product lead, a tech lead, and a clinician. 
The product lead and tech lead should not be from the same cluster as the team presenting work, and this role can be filled by either an actual "lead" or anyone more senior (e.g. our head of product or a senior solution architect). 
Members of the team that must participate are: 

- A designer
- A user researcher
- A product manager
- The lead engineer or architect 

Each of these people must present in the review. 
Other members of the team are welcome to join, but the total number of people from the team should not exceed 8. 

Additionally, we do not expect senior stakeholders from outside of the team to participate. 




## The review

### What happens before a review?
 
At least two days ahead of the review, the team should send the panel a link to their most current prototype along with whatever materials they plan on presenting (e.g. a Mural board) so that the panel have time to get familiar with the subject matter. 

### What happens during a review?
 
Plan for the meeting to take about about two hours. If it takes longer, this is a sign that you haven't done enough to keep UCD and product leads informed as you were doing the work. 

The design assurance review is not meant to replace normal feedback and peer review processes. You should continue asking for and receiving feedback during team sessions and profession huddles. Those processes should involve UCD leads when possible, which will in turn make the design assurance review easier. 
Assurance reviews have a simple format:

- Give an overview of the thing you’re designing, making sure to answer the following questions: 
  - What is the problem you are working on and why are you trying to solve it?1
  - Who are your users and what are their needs?
  - What is the whole journey and how did you decide on the scope?
  - What are your riskiest assumptions and how have you tested them?
  - What constraints have you dealt with and how have they affected the decisions you've made
- How will you know you've solved the problem for users?
- Walk the panel through the user journey (including all paths)
- Wherever possible, the team should "show the thing"
- Answer questions
- Get feedback 

There isn't a prescribed format for presenting, and hopefully there never will be an official slide template. The ideal review should feel like a conversation. 

The main focus of the design assurance review is to evaluate the work against the [NHS service standard](https://service-manual.nhs.uk/standards-and-technology/service-standard). The panel will be primarily concerned with points 1–5, 10, 13, and 16, which are:

- [1. Understand users and their needs in the context of health and care](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/1-understand-users-and-their-needs-context-health-and-care)
- [2. Work towards solving a whole problem for users](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/2-and-3-work-towards-solving-a-whole-problem-and-provide-a-joined-up-experience)
- [3. Provide a joined up experience across all channels](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/2-and-3-work-towards-solving-a-whole-problem-and-provide-a-joined-up-experience)
- [4. Make the service simple to use](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/4-make-the-service-simple-to-use)
- [5. Make sure everyone can use the service](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/5-make-sure-everyone-can-use-the-service)
- [10. Define what success looks like and be open about how your service is performing](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/10-define-what-success-looks-like-and-be-open-about-how-your-service-is-performing)
- [13. Use and contribute to open standards, common components and patterns](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/13-use-and-contribute-to-open-standards-common-components-and-pattern)
- [16. Make your service clinically safe](https://service-manual.nhs.uk/standards-and-technology/service-standard-points/16-make-your-service-clinically-safe)

(For more information about each point of the service standard and how to make use of them, see "Understanding the NHS service standard")

In short, the panel will want to understand what you've done, why you've done it, and how that aligns with the service standard. 

That's pretty much it! 



## What happens after the review?

The panel will provide some feedback during the review itself. Following the review, the panel may send further questions or requests for more information that they'll factor into any feedback provided. The panel will provide written feedback in the form of a Confluence page (reports are published here), including notes about what they were impressed by, what questions you should investigate further, and what changes need to be made. That feedback will be communicated to the team in a meeting that should take place within a week of the review. 

Feedback can be divided into four categories:

- **Comments** describing what the team was impressed with, e.g. "the panel think the team did a great job of focussing on user needs and ensuring design ideas were measurable"
- **Recommendations** that the team can consider, e.g. "we think it would be a good idea to break the work into two parts, because you could probably do each part in less time that way"
- **Work required in the future** that the team need to do, but not right now, e.g. "the team need to reevaluate their approach to measuring success before launch"
- **Work required before go-live** that must be dealt with before proceeding, e.g. "you can't use that component here because it is inappropriate; change it to component Y"

Please be aware that required changes are required! This means that you will need to budget your time accordingly. It would be a very bad idea to be working toward a ministerial commitment that has a fixed date and schedule a design assurance review at a time that will make it impossible for you to both make required changes and hit the ministerial deadline.

After the review, you must take the work to the Design and Architecture meeting to solicit feedback from the technical community.

The feedback form has an area for logging the actions you have taken against the feedback. You must use this to document progress. The panel is available for a follow-up call if you want one, but the normal method of tracking work after the review is by logging your progress on the feedback form in the "actions" column and sending a note in Slack.


---


 ## Reference material
 
 #### Reference material:
 
 For further reference, here is some related reading material. 
 
 - [Gov.uk: how service assessments work](https://www.gov.uk/service-manual/service-assessments/how-service-assessments-work)
 - [Gov.uk: how the Alpha phase works](https://www.gov.uk/service-manual/agile-delivery/how-the-alpha-phase-works#solving-a-whole-problem-for-users)
 - [Gov.uk: scoping your service](https://www.gov.uk/service-manual/design/scoping-your-service)
 - [Riskiest assumption test vs MVPs: what's the difference?](https://clutch.co/resources/riskiest-assumption-test-vs-mvp-whats-the-difference)
 - [Questions you'll be asked in an alpha assessment](https://www.digital.mod.uk/service-manual/service-assessments/what-to-expect/questions-in-an-alpha-assessment/)
 - [Questions you'll be asked in a beta assessment](https://www.digital.mod.uk/service-manual/service-assessments/what-to-expect/questions-in-a-beta-assessment/)
 
 #### Footnotes:
 
 1. Sometimes the answer to why you are working on the problem is because a senior stakeholder said so – that's fine, you should tell the panel that.
