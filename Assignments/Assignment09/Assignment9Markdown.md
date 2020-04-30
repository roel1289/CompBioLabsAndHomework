# How different fishing methods reflect the size of fish
By Ross Ellwood
![The little Colorado River](https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/littleColoradoRiver.jpg)
*Photo of the Little Colorado River in Arizona.*

## Introduction
With a forecast of increasing human activity, things like warmer temperatures and hydrologic variability are encroaching on the habitats
of many. One area that shows high variability due to 
our changing world are rivers and streams, and one of the main residents of these areas are fish. The research of these 
areas their inhabitants is very important to keep them 
healthy. There are various common techniques to research fish; some of these main techniques involve long poles and a series of nets. 
For my analysis, I will be looking into how the various research methods of catching fish compare; this leads me into my research question. 

## Biological Question
When researching rivers and other aquatic habitats, studying the fish that live
in those habitats is very common, and there are a couple ways to catch these fish. 
Some of the main methods to catch fish for research are a dipnet, hoop, and a seine. A dipnet is a large circular net attached to the end 
of a long pole. A hoop is a series of two or more metal circles that are held in formation by a long closed net. And finally, a seine is long net that
falls down vertically and is weighted on the bottom. In addition, a seine has buoyed by floats on the top. A seine is then held across a river. 
For my data analysis, I asked the ***question*** of how do the average length of fish 
and fish length variability compare between the three fishing methods: a dipnet, hoop, and a seine.

## Methods
### The Data's Origin
The data set I have looked into is one by Kathrine Behn and Colden Baxter regarding the Little Colorado River in Arizona. 
This dataset is called [ _The trophic ecology of a desert river fish assemblage: influence
of season and hydrologic variability_ ](https://datadryad.org/stash/dataset/doi:10.5061/dryad.4q50bp6) and takes place
from 2012 to 2014.
The authors evaluated the plasticity of the food web in undammed rivers in the arid southwest United States. They also
looked into how factors such as humans or seasons influenced the foodweb.

### What the Authors Did With the Data
The main intent of the original authors was to determine how factors such as the influence of seasons and
hydrological variability influence the foodweb of a river. In order to produce this data, the authors focused on four native
species of fish: blue head sucker (_Catostomus discobolus_), flannelmouth sucker (_Catostomus latipinnis_), speckled dace (_Rhinichthys osculus_), and the endangered humpback chub (_Gila cypha_). The authors looked
into the diets of these fish across different seasons to see how the diets varied throughout change. The authors found that
the fish diet diversity in the Little Colorado River was ~2x the diversity of the Colorado River's tailwaters. In addition, they 
found that the humpback chub consumed the largest amount of terrestrial food and benefited off food made available due to flash 
floods. In all, they were able to find conclude that fish in these areas must be able to adapt to dynamic environments in order to 
survive in these areas. 

### The Data Structure
After taking many samples and measurements, the authors combined their information into a series of five datasets. For my project,
I only looked at one of the datasets; it has 10 columns: date, gear, species, total length of fish, fork length of fish, 
estimate weight (grams) of fish, weight source, whether or not the fish was sampled for diet, fish ID, and any notes. Within the whole 
dataset, there are 2736 rows or observations. 


### What I did with the Data
There are countless research projects that involve surveying for fish, but there there is a 
clear gap in research that involves comparing freshwater fish survey techniques as I am doing in my project.
In order to pursue my question, I isolated the second dataset from the original authors. Next, I isolated
the two columns containing type of survey gear and the length of fish caught from tip to tail. 
After a bit more of parsing through data, I was able create a clear boxplot illustrating 
the average fish length for each method and how much variation. By knowing which techniques may 
bring different sized fish, scientists can have more knowledgeable, guided research. For example, if 
in a project one wanted to catch a notoriously small fish, they could use the technique that generally 
elicited smaller fish. 

## Results and Conclusion

#### Boxplot of the results

<img src="https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/Rplot3.png" alt="https://github.com/roel1289/CompBioLabsAndHomework/blob/master/Assignments/Assignment09/Rplot3" width="600"/>

I was able to find a clear difference between the averages of the different gear. After running a one-way ANOVA test, I was 
able to produce a p-value of p = 2e-16 showing it was statistically significant. In other words, 
the fish length averages for each method are significantly different. So, 
it is unlikely the difference in fish length for each method is due to pure chance.\
Additionally, from RStudio, I was able to determine that the mean fish length for the dipnet,
hoop, and seine, respectively are 48.4 cm, 115.0 cm, and 57.4 cm. It is clear to see that the hoop most
frequently brings in the largest fish while the dipnet and seine seem to catch smaller fish. In addition, 
this figure illustrates the variability among the different techniques. Because the hoop has the longer 
whiskers and a large array of outliers, we can conclude it has the most variation in fish length.\
My original prediction that the seine would bring forward the largest fish was proven to be false.
One reason why the hoop yielded the biggest fish on average is that it is possible to lay the hoop deep in the water
where the bigger fish may be. Because the hoop can rest in the water for a longer period of time than the other methods, it is possible 
fish can become comfortable with it around and are more likely to get trapped in it. Whereas the dipnet and seine are being constantly
held by people, so little human movements may spook the fish, preventing the fish from getting trapped.\
With this information at hand, researchers can now make a more educated decision on which methods to use. 
If researchers want to yield a large variety of lengths of fish, they could use all three options; however, 
if researchers want to catch a more specific fish or size, they have more routes to take. 




## References Cited
Behn, Kathrine E.; Baxter, Colden V. (2019), The trophic ecology of a desert river fish assemblage: 
influence of season and hydrologic variability, Ecosphere, Article-journal, https://doi.org/10.1002/ecs2.2583