.class public final synthetic Lcom/google/common/collect/SortedMapDifference$-CC;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$entriesDiffering(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .registers 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$entriesInCommon(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .registers 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$entriesOnlyOnLeft(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .registers 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$entriesOnlyOnRight(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .registers 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method
