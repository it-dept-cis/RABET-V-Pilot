# Recommendations

We believe the RABET-V pilot was a success, especially given its execution during the difficult 2020 election season.

That said, there is a long way to go to making the RABET-V process a viable, sustainable operation in the U.S. election community. This section lays out recommendations for improving the current process, establishing an operational structure, and enhancing the service offering in the future to provide more value to technology providers and election offices.

The recommendations are organized into categories below.

## Preparation

The pilot served as both a trial run of the RABET-V process and as part of the design process. Because of this approach, we had a limited set of material that Technology Providers could use to prepare their submissions. This was a major inhibitor of efficiency for both the Technology Provider and the Administrator.

To overcome this, the Administrator should create an addendum to the Program Manual or a separate set of documents that provide reference architectures, sample diagrams, and other examples of a quality initial submission. This can evolve over time and should include an annotated version of the application, showing common sticking points, notes and clarifications. It should also have more information about the submission process to encourage Technology Providers to have the appropriate team members ready to engage at the right times, especially for the Process Review.

## Iterations

The challenges of 2020 led to an abbreviated pilot in which we were unable to test re-verifications. While we have high confidence in the time and cost efficiencies of the developed methodologies, as this is a crucial aspect of the RABET-V value proposition, we recommend additional testing to ensure the re-verification process meets expectations for security. That is, a rigorous effort should be made to validate the assumption that testing can be streamlined for smaller changes.

## Process Steps

### Human vs Tool-based Reviews

During the pilot, we deployed a mix of people and tools to conduct separate parts of the RABET-V process. This ranged from a fully-manual approach for the Process Review and a highly automated approach for the Architecture Review via a tool called Lattix. This tool proved valuable both as a system analysis tool and a change analysis tool. Using such tools can hasten verifications but comes at a cost. Having a more concrete sense of the RABET-V process in action, the Administrator should conduct a thorough study of which combination of manually and automated processes achieves the desired security outcomes at the desired pace and price.

### Incremental vs Full Reviews

As mentioned earlier in this report, we assumed we would need to conduct full Process and Architecture Reviews when changes were made. During the course of the pilot, we determined that RABET-V could support a more agile approach, for both reviews. As part of a reverification, the Technology Provider could submit changes to its processes or architecture for review, have them assessed, and receive an updated process score.

An improved score could create additionally streamlined testing for software changes. On the other hand, should a Technology Provider take on riskier organizational processes, it could increase the testing burden on the software. This more agile approach is highly consistent with the goals of RABET-V and we strongly recommend integrating iterative process and architecture reviews as part of the standard RABET-V process, while maintaining full reviews over time. This approach is also consistent with many standards certification processes which, for instance, require yearly reviews and a full assessment every three years.

### Combining Security Claims Validation with Verification Testing

During the pilot we saw that some steps were sufficiently independent that they could occur in parallel and others, particularly the Security Claims Validation and the Verification Testing, were so intertwined they truly only made sense to occur together. We recommend combining these two functions into a single process step that ultimately generates the RABET-V testing results.

## Automation

While the RABET-V process provides for efficient reviews of small changes and much more closely aligns with the modern software development model than traditional testing regimes, there is room to grow.

We recommend the Administrator explore the possibility of integrating tools directly within Technology Providers’ continuous integration and continuous deployment (CI/CD) pipelines. A fully integrated testing regime can maintain the independence of the Administrator from the system but provide automated verification within a Technology Provider’s deployment model. A fully integrated RABET-V process within CI/CD would allow verifications triggered by the deployments themselves, with intervention by the Administrator only when triggered by the scope of the change itself.

## Economic Model

### Starting up

Finding a sustainable, steady state cost model for the Administrator is important, but will be less of a challenge than starting up an economic model that doesn’t currently exist. To that end, we have a few important recommendations. Like everything in this recommendations section, this section reflects the opinions of the CIS team that worked on the RABET-V pilot and should be taken only as one perspective of many.

1. Focus first on Subscribers. While fostering a robust Technology Provider market is also critical, by eliminating duplication of documentation across multiple state certification programs, the RABET-V process can already lower costs to Technology Providers which, along with a strong initial subset of states adopting RABET-V, should provide sufficient participation from Technology Providers.
1. Choose election components wisely. Put simply, there is a larger market and more money in some election technology components than others. To be successful, the Administrator should conduct a phased rollout of supported election components beginning with those that have the greatest likelihood of fostering a sustainable cost model.
1. Don't overcomplicate. While the internal reviews and testing regimes may require a relatively high degree of sophistication, these should be packaged in a way that allows less sophisticated Subscribers to make strong, defensible decisions. Providing significant detail to Subscribers will support Subscribers with better technical resources, but clear and concise data on how a product performs will support clear justifications in the highly political environment of elections.
1. Support state transitions. In addition to keeping Subscribers' costs down, we recommend significant investment in helping states either develop or transition to a state certification program that supports RABET-V. This could mean the Administrator providing model legislation and regulation language, providing assistance in crafting program procedures, providing training to states and localities on how to interpret results, and other similar efforts.

### Administrator Duties

The RABET-V pilot took a distributed approach to administering the program. While done for convenience in the pilot as it would be impractical to staff up, the pilot demonstrated that such an approach may not only be possible, but preferred.

Just as a healthy market for election technology products can result in better security outcomes, a diversity of process providers within the RABET-V process can result in better security outcomes. To that end, both specialization in steps of the RABET-V process as well as having multiple providers for each of those steps can result in better security outcomes and more agility for the Administrator.

Moreover, this allows the Administrator to focus on innovation and efficiency and to avoid finding itself entrenched in its own approaches. The security goal of modern software development is match pace with or outpace adversaries. This creates a need for an Administrator that can accept innovation from Technology Providers and adapt its practices without sacrificing speed or security. This may be possible with a well-run integrated Administrator shop, but is more likely if the Administrator is able to quickly seek new assessment and testing providers and keep current providers in a position to adapt to changing needs.

## A Final Word

This process began with a widely-held view that many existing testing regimes are unable to keep pace with the rapid deployment model in practice today. We hypothesized that we could develop a new model that better addresses today's threat environment.

Throughout piloting the RABET-V process we learned a great deal about what did and didn't work and what could generate even greater security gains for the election community. We have strong confidence that the RABET-V process can improve security outcomes at a lower cost with greater speed and flexibility than traditional testing approaches.

That said, the specific approaches matter. The technical and procedural features that can test software efficiently are only part of the equation. The implementation of process and architectural reviews are what make the streamlined testing possible. The Administrator must doggedly adhere to the principles that the RABET-V process's holistic approach to enable an abbreviated approach with any given re-verification. Additionally, continual improvement of RABET-V process itself is what will allow it to remain an innovative and effective verification regime into the future. The value of the RABET-V process is not its newness, but its focus on continual renewal, both of the products it seeks to verify and its own internal approach.
