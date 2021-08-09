# Rotten Tomatoes Critic Ratings: Trends from 1995-2020
#### Exploratory Analysis

### Summary/Overview:
Rotten Tomatoes is one of the leading online aggregate sites for TV and Film critic reviews. A team of curators read thousands of reviews and assign each review a rating, which is then averaged with other critics’ reviews to create each film and television series’ ‘Tomatometer Score’. 

The purpose of this analysis will be to explore rating/Tomatometer Score trends over the past 25 years for three types of production companies: major studio, independent, and formerly independent companies that recently merged with major studios. Using Rotten Tomatoes metadata for over 17,000 films and over a million individual critic reviews, this exploratory analysis will evaluate the following:
  * The relationship, if any, between the number of critics and critic ratings
  * Key differences between major studio and independent production companies
  *	Explore significant changes for production companies that were formerly indie but recently merged with major companies
  *	Changes in average ratings by release year for the past 25 years

<br>

### Dataset:
[Rotten Tomatoes Movies and Critic Reviews](https://www.kaggle.com/stefanoleone992/rotten-tomatoes-movies-and-critic-reviews-dataset) dataset via Kaggle

#### Choosing Sample Set:
There are hundreds of production companies who have distributed films over the past 25 years. The sample set will include:

Seven major production companies:
* 20th Century Fox
* Sony Pictures
* Disney Pictures
* Warner Brothers
* Universal
* Paramount
* MGM

Four independent production companies:
* IFC Films
* Lionsgate
* Magnolia Pictures
* A24

Two previously independent companies that recently merged with a major studios:
* New Line
* Focus Features

#### Dataset Limitations
The sharp drop in total number of films in 2020 is possibly due to the COVID pandemic. Many major studios did not release many, if any, films during the year, while independent studios quickly shifted to releasing films via streaming services and online rental platforms. Indie studios released 34 films during 2020, while the major studios only released 21.

There is also the limitation of the 2020 data, which only covers the year up to October 31, 2020.

<br>

### Analysis/Observations

#### Brief analysis of overall dataset averages:
The average total number of critics, including top critics, peaked between 2004 and 2005, which coincides with the site’s purchase by IGN and later Fox News Corp. The averages declined slightly around 2011, when the site was acquired by Warner Bros.

The average rating for films by year has steadily increased (nearly 15 points over the study period), with the largest increase between 2005 and 2010 and 2015 to 2020.

#### Sample set study:
##### Major and Independent Production Companies
The average rating for major studio films has increased since 2000. This coincides with the massive increase in the number of critics, growing from 100 around 2002 to over 200 by 2020. The average rating for studio films does not reach "fresh" status (60% positive reviews or above) until around 2018.

The wide range and massive drop in ratings from pre-2000 is since very few films were released by IFC Films, Magnolia Pictures, Lionsgate and A24 during this time period. Magnolia Pictures wasn't founded until 2001, and A24 wasn't founded until 2012. Post-2000, the average rating for indie films stays between 55 and 65 for the next 15 years.

##### Formerly Independent Production Companies
New Line Cinema was established in 1967 as a distribution company that specialized in foreign films, arthouse and indie cult hits like Reefer Madness (1936). In the 1980s, they expanded their film production and began producing films directed by John Waters, and slasher films such as A Nightmare on Elm Street. In 1990, they produced what would become the highest-grossing independent film at the time, Teenage Mutant Ninja Turtles. In 1994, they merged with Turner Broadcast System, but remained a separetly operated studio and released their most lucrative franchise, The Lord of the Rings, in the early 2000s. In 2008, their parent company, Time Warner, shut down New Line and merged it with Warner Bros.
* On average, New Line Cinema never received particularly positive ratings, with their average between 1995-2005 being in the 40-55 range. The total number of films released by New Line Cinema dropped by over half post-merge, and though initial ratings were low, they went on to receive their highest average rating around 2017.

Focus Features was founded in 2002. Many of their films were arthouse films like Swimming Pool and The Pianist, and other indie films like Eternal Sunshine of the Spotless Mind and The Motorcycle Diaries. In 2014, they merged with Universal Pictures International and became part of Universal.
* Focus Features had one of the highest average ratings prior to their merge with Universal in 2016, which coincided with the lowest ratings in the company's history. Their average rating dropped significantly despite releasing more films than average in prior years. The average rating returned to a normal range (70-80) in 2018.

<br>

### Further Research
- Though average ratings did rise as the number of critics did, there is no evidence the two are directly correlated based on this data. More in-depth research would be needed before reaching that conclusion.
-	Further analysis using top critic ratings only.  Rotten Tomatoes' top critics are vetted by an advisory board and have stricter guidelines in terms of content and professional standards. Regular critics are often accepted as a critic due to their popularity online. They need to have a large online following (a certain number of page views, podcast ratings and social media followers) to get accepted as a RT critic. It’s possible that regular critics are more likely to give positive ratings to receive more clicks/views and personal perks from studios.




