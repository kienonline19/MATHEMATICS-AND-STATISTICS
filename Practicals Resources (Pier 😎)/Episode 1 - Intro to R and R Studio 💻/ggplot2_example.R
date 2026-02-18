# Load required libraries
install.packages("ggplot2")
install.packages("ggrepel")
library(ggplot2)
library(ggrepel)  # For nicer, non-overlapping text labels

# Create the scatterplot
ggplot(data = AI, aes(x = Talent, y = Infrastructure)) +
  # Plot points with color based on Commercial and shape by Region
  geom_point(aes(color = Commercial, shape = Region), size = 4, alpha = 0.8) +
  # Define a blue-to-red gradient for the Commercial variable
  scale_color_gradient(low = "blue", high = "red") +
  # Add labels for Italy and United States using ggrepel
  geom_text_repel(
    data = subset(AI, Country %in% c("Italy", "United States of America", "Austria")),
    aes(label = Country),
    size = 5,
    fontface = "bold",
    color = "black"
  ) +
  # Add titles and axis labels
  labs(
    title = "Talent vs Infrastructure Scatterplot",
    subtitle = "Points colored by Commercial (blue = low, red = high) & shaped by Region",
    x = "Talent",
    y = "Infrastructure",
    color = "Commercial Score",
    shape = "Region"
  ) +
  # Use a clean, minimal theme with some custom styling
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    plot.subtitle = element_text(face = "italic", size = 14, hjust = 0.5),
    legend.position = "right"
  )