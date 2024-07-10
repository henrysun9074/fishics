# fishics
Integration and analysis of Eastern New Jersey fish eDNA data with oceanographic variables using machine learning

## Overview

This project integrates environmental DNA (eDNA) data with oceanographic variables to analyze fish community dynamics across different seasons. By leveraging advanced machine learning models and dimensionality reduction techniques, this research aims to provide a comprehensive and nuanced view of fish distribution dynamics prior to construction of offshore wind farms.

### Objectives

**1**: Determine if nonlinear methods (tSNE, UMAP, VAE) outperform linear dimensionality reduction techniques (PCA) in encoding a 2D representation of the data.  
**2**: Investigate if there exists a significant correlation between observed eDNA-oceanography patterns and seasonality.

## Workflow

Flow chart with workflow will be added upon project completion.

## Code

Keras/Tensorflow is being used for building a simple VAE for dimensionality reduction in Colab. Random forests, PCA, and tSNE were all ran in Python using sklearn; UMAP was ran in R using umap. 

## Methods

- **Dimensionality Reduction**: Compare the effectiveness of nonlinear methods like t-distributed Stochastic Neighbor Embedding (t-SNE) and Variational Autoencoders (VAEs) against linear methods like Principal Component Analysis (PCA). More details about evaluation metrics will be added later.
- **Machine Learning Models**: Use Random Forests (RF) to analyze the correlation between eDNA-oceanography patterns and seasonality.

## Impact

- **Fisheries Management**: Provide accurate and up-to-date information on fish community compositions and seasonal variations to inform stock assessments and ensure sustainable fisheries.
- **Offshore Wind Development**: Offer insights into the potential impacts of offshore wind farms on marine biodiversity, guiding the placement and operation of wind farms to minimize disruptions.

## Timeline

Below is a 10-week timetable outlining the plans for completing this research project:

| **Week** | **Activities**                                      |
|----------|-----------------------------------------------------|
| Week 1   | Orientation, introduction, meet the teams           |
| Week 2   | Glider background and write proposal                |
| Week 3   | Software installation, get eDNA/ocean data, make hypotheses |
| Week 4   | Dimensionality reduction, access oceanographic data |
| Week 5   | Debugging with dimensionality reduction             |
| Week 6   | 1st integration test complete to combine datasets   |
| Week 7   | Explore connection between ocean and eDNA data      |
| Week 8   | Build random forest model in Python     |
| Week 9   | Run models, finalize analysis/scientific story      |
| Week 10  | Prepare presentation and poster          |

## Contact

- **Henry Sun** - Marine Science and Conservation, Duke University, Durham NC, USA. hs325 [at] duke.edu
- **Josh Kohut** - Department of Marine and Coastal Sciences, Rutgers University, New Brunswick NJ, USA. kohut [at] marine.rutgers.edu
