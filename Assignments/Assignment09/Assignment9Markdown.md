# How different fishing methods reflect the size of fish
By Ross Ellwood
![The little Colorado River](https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/littleColoradoRiver.jpg)
*This picture is of the Little Colorado River in Arizona.*

## Introduction
With a changing climate, the habitat for more and more species is drastically changing. One of the areas that is hit the hardest
are rivers and streams, and one of the main residents of these areas are fish. The research of various fish is very important to keep them 
healthy. In order to research fish there are various methods. One method is to identify and count fish while they are in the water, while another
method is to catch them and pull them out of the water. For my analysis, I will be looking into how the various research methods of catching fish compare. 
This leads me into my research question. 

## Biological Question
When researching rivers and other aquatic habitats, studying the fish that live
in those habitats is very common, and there are a couple ways to catch these fish. 
Some of the main methods to catch fish for research are a dipnet, hoop, and a seine.
For my data analysis, I am asking the ***question*** how do the average length of fish 
and variability compare between the three fishing methods: a dipnet, hoop, and a seine?

## Methods
### The Data's Origins
The data set I will be looking into is one by Kathrine Behn and Colden Baxter regarding the Little Colorado River in Arizona. 
This dataset is called [ _The trophic ecology of a desert river fish assemblage: influence
of season and hydrologica variability_ ](https://datadryad.org/stash/dataset/doi:10.5061/dryad.4q50bp6)
. 
### The Data Structure
After taking many samples and measurements, the authors combined their information into a series of five datasets. For my project,
I only looked at one of the datasets; it has 10 columns: date, gear, species, total length of fish, fork length of fish, 
estimate weight (grams) of fish, weight source, whether or not the fish was sampled for diet, fish ID, and any notes. Within the whole 
dataset, there are 2736 rows or observations. 

### What the Authors Did With the Data
The main intent of the original authors was to determine how factors such as the influence of seasons and
hydrological variability influence the foodweb of a river. In order to produce this data, the authors focused on four native
species of fish: _blue head sucker, flannelmouth sucker, speckled dace_, and the _endangered humpback chub_. The authors looked
into the diets of these fish across different seasons to see how the diets varied throughout change. 

### What I did with the Data
There are countless research projects that involve surverying for fish, but there there is a 
clear gap in research that involves comparing fresh water fish survery techniques as I am doing in my project.
In order to pursue my question, I isolated the second dataset from the original authors. Next, I isolated
the two columns containing type of survery gear and the length of fish caught from tip to tail. 
After a bit more of parsing through data, I was able create a clear boxplot illustrating 
the average fish length for each method and how much variation. By knowing which techniques may 
bring different sized fish, scientists can have more knowledgable, guided research. For example, if 
in a project one wanted to catch a notoriously small fish, they could use the technique that generally 
elicited smaller fish. 

## Results and Conclusion

#### Boxplot of the results

<img src="https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/Rplot3.png" alt="https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/Rplot3" width="600"/>

I was able to find a clear difference between the averages of the different gear. After running a one-way ANOVA test, I was 
able to produce a p-value of p = 2 x 10^-16 , so the fish length averages for each method are significantly different. So, 
it is unlikely the difference in fish length for each method is due to pure chance.
> After running some code in RStudio, I was able to determine that the mean fish length for the dipnet,
hoop, and seine, respectively are 48.4 cm, 115.0 cm, and 57.4 cm. It is clear to see that the hoop most
frequently brings in the largest fish while the dipnet and seine seem to catch smaller fish. In addition, 
this figure illustrates the variability among the different techniques. Because the hoop has the longer 
whiskers and a large array of outliers, we can conclude it has the most variation in fish length.  



## References Cited
Behn, Kathrine E.; Baxter, Colden V. (2019), The trophic ecology of a desert river fish assemblage: 
influence of season and hydrologic variability, Ecosphere, Article-journal, https://doi.org/10.1002/ecs2.2583