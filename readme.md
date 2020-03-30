
# GLUCOSE Data Only#

GLUCOSE is a largescale database for common sense reasoning collected via crowd sourcing. 

This resource is available under Creative Commons
Please cite (Mostafazadeh et al., 2020) when using this corpus.

The data is available [here](https://comoltd.sharepoint.com/:u:/s/Glucose/EU0IJE1sT9JCgOe7YU60x-0BI24M7E9BFfknfSq-GwAnHA?e=LhGsp9)

This download contains the crowd worker responses to the GLUCOSE task. These data can be used to train models for learning common sense reasoning about stories.

The data is in the form of a csv file with 71,979 rows and 47 columns.   

There are 337,636 rules filled in, each being a mini-theory with both a specific statment of the mini-theory and a general statement of the mini-theory

Each rule is described by a quality rating, which is based on the worker's performance on the row of responses. We assume about 10% errors on the rating numbers. 
All the data, regardless of quality rating, were collected from workers who passed challenging qualification tasks and were subsequently trained for improved quality on the task.
For details on how the ratings were created and determined, see [link to data quality management document]. 

The quality ratings are:
3 = Highest quality. Rules display an accurate level of generalization in the general rules. Rules make sense and are appropriate for the sentence, given the context. 
2 = Mid-quality raing. These are still very good rules that have a good balance of generality, but a higher percetage in this set may be overly specific, use attribute clauses less proficiently, or not be as conceptually concise
3 = Lower-quality rating. These rules are still useable, but a higher percentage of them have, in addition to the issues in the 2-level ratings, highly specific general rules and some misunderstanding of how to use attribute clauses. 

The data in the csv has 47 columns. The data in the columns is described below. The column label is given, along with its index, the the header for that column, a description of the column contents, and example of what occurs in the column, and an example of how the data can be used. Optionally, there is then a "NOTE" if there is anything unexpected in the data format.

A; header: unique_id; description: a randomly generated alphanumeric sequence for a given story with the sentence index appended at the end after two underscores; example: cbee2b5a-f2f9-4bca-9630-6825b1e36c13__0; uses: find all user responses to a particular sentence in a given story
B; header: selected_sentence_index; description: the index of a given sentence in a story; example: 0; uses: how users respond to the first sentence versus the last, which index of a story contains the most conceptual information (all ROC stories are the same length)
C; header: worker_id; description: each worker has a unique identificaiton number; example: 1; uses: filter data by worker
D; header: worker_quality_assessment; description: rating for the worker on the assignment in the row; example: 2; uses: divide data by work quality
E; header: story; description: contains the full text of the ROC story that was used for the HIT. Each sentence is separated by "***"; example: The school football game was last weekend.****The team has been very good this year.****They have won a lot of games.****A lot of people showed up to watch.****They won by a ton of points.; uses: stories can be used to filter based on vocabulary or topics
F-AS; header: 1_specificNL - 10_generalStructured; description: For each of the ten dimensions, there are four columns. The columns occur in this order "n_specificNL, n_specificStructured, n_generalNL, n_generalStructured", where n is in 1-10. The specific columns give the specific statements from the story. The general statements give the corresponding generalization. The NL columns are formated in natural language, whereas the structured columns contain indications of the slots used to fill in the data.; example: The school  has  a football team  >Causes/Enables> The football game  was last weekend 	{The school }_[subject] {has }_[verb] {a football team }_[object1] >Causes/Enables> {The football game }_[subject] {was last weekend }_[verb]	Somewhere_A (that is a school ) has  Something_A (that is a sports team ) >Causes/Enables> The game  was last weekend 	{Somewhere_A ||that is a school ||}_[subject] {has }_[verb] {Something_A ||that is a sports team ||}_[object1] >Causes/Enables> {The game }_[subject] {was last weekend }_[verb]; uses: This is the primary data collected. It provides the common sense knowledge about the related stories and those general rules about the world derived from the specific statements
AT; header: number_filled_in; description: the number of dimensions that the worker filled in. Each set of general and specific, structured and unstructured, counts as one.; example: 3; uses: averaging how many dimensions workers supplied
AU; selected_sentence; description: text of the sentence that the HIT was about.; example: The school football game was last weekend.; uses: analysis of the text of particular sentences (e.g., relative to the containing story)