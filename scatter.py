from matplotlib import pyplot
import pandas

df=pandas.read_csv(r"C:\Users\More\Desktop\rprogram\iris.csv")
fig,ax=pyplot.subplots(1,1)

colors={"Setosa":"brown","Versicolor":"purple","Virginica":"orange"}
grouped=df.groupby("species")

for key,group in grouped:
    group.plot(ax=ax,kind="scatter",x="sepal.length",y="sepal.width",label=key,color=colors[key])

ax.set_title("Scatter Plot")
ax.set_xlabel("Sepal Length")
ax.set_ylabel("Sepal Width")

pyplot.show()
