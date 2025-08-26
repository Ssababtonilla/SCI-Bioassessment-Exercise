Stream Condition Index (SCI) Analysis Assignment

This assignment is designed to assess your ability to work with benthic macroinvertebrate data,
apply the Virginia Stream Condition Index (VSCI) and related indices, and interpret the results in
the context of stream ecology. You will use the provided R code and datasets to perform
quantitative analyses, visualize patterns, and develop data-supported ecological interpretations.
Your responses should integrate statistical output with ecological reasoning, reflecting a
graduate-level understanding of analytical methods and stream ecosystem processes.

## Instructions
You have been provided with:
- Processed macroinvertebrate datasets (station metadata, taxa counts, master taxa list)
- R Markdown script to run VSCI and VCPMI metrics
- Supporting R scripts for metric calculations and rarification

Use these resources to address the following questions. You may present your results in tables or
figures as appropriate. Clearly label all tables and figures, and include concise captions.

## Assignment Questions
1. Across-Site Summary: Calculate the average, standard deviation, and variance of VSCI,
   VCPMI +63, and VCPMI -65 scores for each site. Present these in a comparative table.
2. Threshold Exceedance: Identify which sites have average scores above the impairment
   threshold (VSCI ≥ 60; VCPMI ≥ 42). Present results as a table or a bar chart with threshold
   lines.
3. Temporal Trends: Plot VSCI scores over time for each site. Comment on whether there
   are improving, stable, or declining trends.
4. Composite vs. Site-Specific: Compare the composite site average score to individual site
   averages. Which metrics differ most between the composite and the site-specific scores?
5. Key Metric Differences Between Sites: Identify which biological metrics differ the most
   among the three sites. Support with a table or figure.
6. Metric Variability Within Sites: For each site, determine which metric has the highest
   coefficient of variation (CV) across sampling events.
7. Biological Drivers: At the family level, identify the taxa most responsible for score
   differences between the highest- and lowest-scoring sites.
8. Abundance Influence: Explore the relationship between total abundance and VSCI score.
   Do high-abundance samples tend to have higher or lower scores? Provide an ecological
   explanation.
9. Rarification Effect: Compare VSCI scores before and after applying the rarification
   function. Discuss any changes in site rankings.
10. Watershed Land Use: Using WikiWatershed or GIS, summarize the dominant land use
    types within a 1 km buffer of each site. Relate these patterns to differences in VSCI or
    VCPMI scores.
11. Stressors to Metrics Link: Select one high-VSCI and one low-VSCI site. Hypothesize
    which stressors are most likely driving differences in key biological metrics.
12. Methods Explanation for Broader Audience: Write a short explanation (≤300 words)
    suitable for a methods section in a stream ecology textbook, covering what the VSCI
    measures, how biological metrics are calculated, and why land use influences these scores.
13. Conceptual Diagram: Create a flowchart showing the process from field sampling to SCI
    calculation to impairment interpretation.
