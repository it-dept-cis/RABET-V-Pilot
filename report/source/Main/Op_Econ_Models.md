# Operational and Economic Models

This section describes the roles and processes necessary for a successful, sustainable RABET-V program. The goal of this section is to lay out a broader perspective of how RABET-V fits in the market of state procurement and certification programs. It assumes the RABET-V process exists and describes various approaches to a sustainable market with a RABET-V program playing a central role.

## The Current Environment

Today, a variety of models exist within states for certifying non-voting equipment.
- In Ohio, testing of e-pollbooks and electronic ballot delivery systems requires a provider to use an independent testing authority to certify that the state's requirements are met. If successful, an application with a nominal fee and a variety of documentation must be submitted to the state, which is reviewed by the Ohio Board of Voting Machine Examiners. The examiners make a recommendation to the Secretary of State, who approves a certification. Changes to the systems may require this process to repeat in its entirety.
- In California, testing of e-pollbooks and remote accessible vote by mail systems (i.e., electronic ballot delivery and marking systems) takes a different path to achieve very similar results. Applicants must open an escrow fund to cover testing costs along with other required materials. An RFP may need to be issued to test the system, followed by the development of a testing plan. After testing, a report is developed, a public hearing occurs, and the Secretary of State makes a final determination.
- Indiana requires similar testing of e-pollbooks. After submission of an application and certification checklist, the oversight program directs the provider to choose an approved testing lab for functional, telecommunications, compliance, and other testing. If successful, the vendor must conduct a field test. If successful in all phases, the Secretary of State makes the final certification decision. Changes to the e-pollbook may require this process to repeat in its entirety.

Each of these processes has unique features, but follow a basic pattern:

![Typical Testing Process](../media/typicalprocess.png)

While these models can be successful in any given state, they have two major deficiencies, both of which have substantial economic and security consequences. The first deals with each process itself, and the second the implications of having wholly separate processes in each state.

First, over time, the recursive approach to administering these programs&mdash;requiring a full review with changes&mdash;are increasingly at odds with a modern software and systems development process that relies on smaller, more frequent changes and fewer major updates. Moreover, software and platforms are being provided as a service, complicating the testing approaches.

For hardware, this is generally manageable within the approach of states like Ohio, California, and Indiana. For software, it creates a dilemma: determining when to perform a complete retest and when to allow an update without testing. Testing too often is costly while testing too infrequently will allow vulnerabilities to persist on deployed systems.

Even if these issues are addressed sufficiently within the confines of each state program, a second problem exists with scaling nationally. Technology providers commonly serve more than one state with the same equipment, meaning that for each certification process they currently require separate testing and incur testing and verification costs multiple times. Additionally, the states must develop, publish, and update their own programs, a costly endeavor that underscores why not all states have a program at all. This raises costs to both states and technology providers, both of which ultimately get passed on to taxpayers.

## A Better Way Forward

Developing a more effective approach is possible. Keeping it compatible with the needs and expectations of states is also possible, though requires more careful planning. Achieving both would require two critical changes:
1.	Establishing a sufficiently flexible process to meet the needs of modern development by testing only what is needed when needed based on the actual changes to the technology.
2.	Increasing reusability across state programs of as many aspects of the certification process as possible, while still respecting the sovereignty of states and the need to adjust for differences in local requirements.

There is enough commonality across state programs to design a model that achieves, to a high degree of completeness, the first change. This is the RABET-V process we piloted. The RABET-V program takes a risk-based approach to verify product revisions, where the risk estimate is based heavily on the product architecture and the provider's software development processes. Other sections of this report can provide insight into the RABET-V approach.

Achieving the second change requires a new operating and economic model. The remainder of this section will describe the roles and processes of such an environment and provide several options for models that may prove successful. While states and localities will remain the certifier, RABET-V endeavors to bring as many aspects of testing and verification as possible into a single program that many jurisdictions can rely on.

## Roles in a National Verification Model
There are five major roles necessary to operate the RABET-V verification model at a national level while respecting the sovereignty of the states. They are:
- Technology Provider: Submits technology to the RABET-V process with the intent of having that technology adopted by one or more jurisdictions.
- Subscriber: A state or local government entity that leverages the RABET-V Program. Subscribing enables the entity to access verification results and related information.
- Approval Authority: A state or local government entity that makes the final determination on whether a product meets the needs of the adopting jurisdiction. Even within a given state or local jurisdiction, this entity may differ from the Subscriber, such as a review board or locality within a state its respective Secretary of State office.
- Administrator: Responsible for overseeing and executing the RABET-V Program. While there is a single Administrator, it may outsource individual RABET-V process steps. Whether it executes all steps or outsources some, we recommend that the Administrator oversees the process and maintains a single agreement with each Technology Providers covering all portions of the process.
- Testing Provider(s): Entities responsible for executing certain parts of the RABET-V process. For example, there may be one entity reponsible for process reviews and a different entity responsible for performing architecture reviews.
- Information Sharing Partner: While not necessary to operate the RABET-V program, it may be in the national interest to share information with and receive information from certain entities to improve the overall level of cybersecurity defense. This could include, for instance, the Cybersecurity and Infrastructure Security Agency and the Election Infrastructure Information Sharing Analysis Center. This would be accomplished through data sharing agreements and may require aggregation and anonymizing information sent to protect individual Technology Providers.

Some roles can only be executed by certain types of entities:

|     Role    |     Viable Entity Types    |     Explanation    |
|-|-|-|
|     Technology Provider    |     Any entity that wishes to deploy its technology    |     This will most often be a private entity, whether for-profit or   not-for-profit. In some cases, a government may develop its own technology and put it through the RABET-V process, either as an independent verification or to deploy it in other jurisdictions.    |
|     Subscriber    |     State and local government entities    |     Only state and local government entities with election-related authorities will have a reasonable need to access subscriber materials.     |
|     Approval Authority    |     Government entity    |     Only state or local government entities could serve as Approval Authorities. While an Approval Authority will likely also be a subscriber, a subscriber is simply a government entity that accesses RABET-V reports. An Approval Authority has the authority to allow a piece of equipment to be used in one or more jurisdictions.    |
|     Administrator    |     Federal government or private entity. Private entity could be either for-profit or non-profit    |     A federal government agency could serve well as the administrator if it could construct the program in a manner that shields the   Administrator from political concerns such as budget cuts, shutdowns, and political interference. This may be possible through a long-term grant mechanism or similar tool, or if the program is able to withstand lapses in appropriations (such as a federal program deemed operationally critical). A private entity, whether for-profit or non-profit, could fulfill the Administrator role if structured to avoid over-reliance on funding from a single party or set of actors that raises questions of objectivity. One such entity could be a coalition of states established to serve this purpose. Federal,   state, and local governments should serve as partners and advisors to administering the RABET-V process, especially with regards to the federal government having access to non-public threat information that could facilitate more effective testing.    |
|     Testing provider(s)    |     Private, either for-profit or non-profit    |     Testing, whether in-house or outsourced, is overseen by the administrator but is addressed separately because it will need to be accepted by the Approval Authorities as meeting their respective requirements. This may require the testing provider to be accredited as a testing laboratory. More than one testing provider may be used for different parts of the RABET-V process.    |
|     Information Sharing Partners    |     Government and private    |     Any type of organization could be a partner for information sharing, though the expectations and requirements of that sharing may differ.    |

## Potential Operating Models

An operating model is the basic process by which an election technology product becomes achieves permission to be deployed in a jurisdiction. Three examples of current state-specific models appear earlier in this section.

This section provides three examples of operating models that could work at a national scale. While the most likely scenario is depicted for each model, the ordering of the steps within each model may vary, giving additional flexibility to the Approval Authority. We expect that all three models will exist; the goal is to evolve an offering that increasingly serves the needs of jurisdictions, reducing one-off programs wherever possible.

In each of these models, functions of the RABET-V process can be separate entities. For instance, the Administrator might contract with testing labs, penetration testers, or other organizations. They would all feed into the RABET-V process orchestrated by the Administrator.

### 1: The Trusted Verifier Model

In this example, a state or locality reviews the RABET-V process and deems it sufficient as a means of verification. The Approval Authority establishes a threshold for certification based on the various RABET-V outputs.

Under this model, the state may still establish other requirements outside of the RABET-V program, such as meeting specific procurement requirements; usability, accessibility, and functional requirements; or a particular configuration of the product.

For revisions to the product, the Approval Authority would accept a reverification from the Administrator, which would scale the verification appropriately based on the scope and risk of the change.

### 2: The Verifier-Field Test Model

This example begins with the Trusted Verifier model where the Approval Authority accepts the verification results if they meet a particular threshold.

In addition, if the threshold is met, the product then goes through field testing to ensure that it works under its jurisdiction's real-world conditions. With many types of products, this is more like integration or user acceptance testing.

In this model, the Approval Authority may have additional requirements, just as in the Trusted Verifier model.

For revisions to the product, the Approval Authority would accept a reverification from RABET-V, which would scale appropriately with the scope of the change. The Approval Authority could specify, based its own analysis of the change and RABET-V reverification results, whether field testing is necessary. Ideally the Approval Authority limits field testing to only times when the changes are likely to impact field performance. Requiring field tests when they are unlikely to have different results from a prior iteration risks the gains of the smaller, more frequent update approach.

### 3: The Verifier+ Model

This example again begins with the Trusted Verifier model, but the Approval Authority establishes additional security-related requirements.

Arranging testing for these requirements could follow a variety of approaches, the most efficient of which is to work with the Administrator or Testing Provider directly to establish a supplement for that jurisdiction. The Technology Provider could then opt to have that supplement included in the RABET-V process if it is interested in operating in that jurisdiction.

The remainder of the process could follow the Trusted Verifier approach or the Verifier-Field Test approach, including any additional requirements that fall outside of the RABET-V scope.

For revisions to the product, the Approval Authority would accept a reverification from RABET-V, which would scale appropriately with the scope of the change. Either the Approval Authority could specify whether a retest of its supplement is necessary, or the Administrator could make that determination based on the scope of the change. Any additional field testing or other requirements would occur at the discretion of the Approval Authority.

Approval Authorities make the determination as to what is sufficient for their jurisdiction and must carefully balance their needs with the realities of modern software development. Those Approval Authorities wishing to impose additional security requirements on Technology Providers should carefully consider the tradeoffs associated with doing so. Slowing the process can result in less frequent updates, which in turn can leave systems less secure. To the extent possible, Approval Authorities should work with the Administrator to incorporate needed changes before adding on additional requirements. Where additional requirements are necessary, states should work with the Administrator to sequence them in a way that causes the least disruption to the process.

## Potential Economic Models

An economic model is the basic process by which value flows between participants, including money and goods or services. Currently, the Technology Provider may pay the Approval Authority an application fee, may pay a Testing Provider a testing fee, and may be required to put an estimate of associated costs into escrow. In some cases, the testing fees can be substantial, creating disincentives to innovate and stay current with the threat environment.

This section provides several potential economic models that leverage the RABET-V program to scale testing. If properly executed, an initial verification should be no more expensive than it is today&mdash;hopefully, less expensive due to incentives for increased up-front focus on security on the part of technology providers&mdash;and re-verifications should be substantially faster and cheaper depending on the scope of the submitted changes.

Any model is likely to incorporate multiple approaches below, effectively a hybrid of several options. But understanding the implications and tradeoffs associated with each will help establish an appropriate balance and long-term success.

### 1: Technology Provider High-Subscriber Low Model

In this model, the Technology Provider would bear most of the cost of verification as well as some of the Administrator's overhead. The Technology Provider would pay up front to begin the RABET-V process, covering the full cost to assess its organization's process. The Technology Provider would then pay its full costs for the initial verification each product. Initial verifications would take longer and be more expensive than subsequent re-verifications. With less extensive changes in any given re-verification, that review would be faster and cheaper.

Subscribers would have a small subscription cost that gives them access to reports for products that have gone through the RABET-V process. This approach increases the likelihood of bringing in a larger share of subscribers more quickly. Subscription costs could be per report accessed or periodic for access to all reports.

This model has dynamic risks over time as the number of initial verifications will fall over time in favor of updates. This could make it more difficult to model and manage the Administrator's overhead cost. Additionally, because the cost is driven by an analysis of the changes, neither the Technology Provider nor the Administrator would know the exact cost of the verification until partway through the process, though over time the Administrator should get good at estimating and automation should increase consistency. An expected low-cost revision could become much more expensive if a review identifies a need for more expensive parts of verification, such as penetration testing. Technology Providers especially may balk at this.

### 2: Technology Provider Low-Subscriber High Model

In this model, costs are minimized to the Technology Provider to stimulate a more robust set of initial verifications. Likely this would mean using Subscriber funds to subsidize initial verifications, while Technology Providers would pay full freight for reverifications. Subscriber costs would cover Administrator overhead.

Subscription costs could be per report accessed or periodic for access to all reports.

This model has a much more predictable revenue stream than the technology provider high-subscriber low model. It can encourage a more robust Technology Provider market as today's Technology Providers would face similar or smaller financial burdens while more new, smaller players would be more likely to be able to afford the initial verification.

By placing more of the Administrator's revenue on Subscribers, it would also reduce the risk of undue influence from large Technology Providers.

### 3: Technology Provider Subsidization Model

To draw more small players into the market, this model adds a revenue or market share component to the charge for any Technology Provider. Smaller players would receive a subsidy to promote a robust market and innovation.

To avoid any impression of market favoritism, the rate of charges or subsidization should be predetermined based on revenue, market share, or a similar metric for transparency.

While this model has significant potential to bring in new players and innovation, large Technology Providers would provide such a large share of the Administrator's revenue that it could create the risk, real or perceived, of undue influence by those large Technology Providers.

### 4: Government Technology Provider Subsidization Model
Many governments have their own home-grown solutions but highly constrained resources. To increase public confidence in more of these solutions, this model provides a subsidy to governments for submitting their own systems.

This could also help generate more novel solutions, fit-to-purpose solutions for jurisdictions with unique needs, and, for successful home-grown solutions, more opportunities for adoption within other jurisdictions.

### 5: Technology Provider Listing Fee

Part of the value of the RABET-V program is that once a Technology Provider has an established process with the Administrator, it can complete an initial verification for any number of products more quickly and inexpensively. This benefits all Technology Providers but has disproportionate benefits for larger Technology Providers that have more products.

Because this could be an ongoing benefit to the Technology Provider for multiple years, the Administrator may want to smooth revenue by charging the Technology Provider an annual listing fee to have the Technology Provider's reports available to Subscribers. This will also provide Technology Providers with increased incentive to put more products and more frequent updates through RABET-V.

A listing fee would create a hurdle for any given Technology Provider's first product, but once they are part of the RABET-V process, they have stronger incentives to stay in it.

## Overcoming Early Economic Barriers
Large-scale models like the one described in this section often struggle to gain traction because they are two-sided markets that exhibit positive network effects. More plainly, their value to each type of party (Technology Providers and Subscribers) only grows large when there is wide acceptance by the other type of party. If all the states and territories bought into the model immediately, a Technology Provider would know that undertaking the RABET-V process would have wide acceptance and result in a large market for its products. Similarly, if all Technology Providers had gone through the process, states and localities would have a large incentive to become Subscribers.
The challenge, then, is to overcome this chicken-and-egg problem. Several approaches can help do that, and they can be used in conjunction with each other.

### 1: Seeding Administrator Functions

An initial funding stream to cover the early costs of the administrator functions would give the administrator an opportunity to run at a reasonable operating capacity and focus on marketing and recruitment to build to a viable and self-sustained steady state.

### 2: Seeding Technology Providers

To overcome the two-sided market problem, seed funding for an initial set of Technology Providers could generate an early rush into the market, and then a reputational effect in which other Technology Providers see that being verified through the RABET-V program is becoming a standard practice.

Not only would this get Technology Providers into the market, but the relatively low incremental cost of revisions would help establish a healthy re-verification process early. In addition, it would help the Administrator refine its processes to lower costs and speed verifications.

### 3: Seeding Approval Authority Changeovers

A source of friction for establishing the new operating model will be Approval Authorities establishing new policies to accept RABET-V verifications in lieu of current processes. While this change will be easy and inexpensive for some states, others may require more extensive efforts. Resources to conduct these changeovers could solve the acceptance problem, generating incentives for Technology Providers to gain verification.

This could involve providing funding to numerous Approval Authorities, but also by documenting early case studies and templates that other Approval Authorities could use to hasten the process and reduce the resource required by any individual Approval Authority.

### 4: Offering the Subscriber Side of the Market for Free

Until there is a robust set of Technology Providers through the RABET-V program, Approval Authorities may be reluctant to pay to be a Subscriber. One of the most common ways to overcome this is to allow Subscriber onto the platform free of charge. This could be temporary based on time or a fixed number of reports, after which a Subscriber fee begins. This could draw in Subscribers, inducing Technology Providers to enter the other side of the market.

## Conclusion

While there are many pieces to both the operating and economic models, the conditions exist today to establish a stronger, more responsive market for non-voting election technology. By coupling verification process changes already underway in RABET-V with an operating and economic model that can ultimately reduce costs to the states, a stronger national model can provide efficiency and security benefits without sacrificing the sovereign roles of states in administering elections.
