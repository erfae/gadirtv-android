.class public final synthetic Lcom/google/common/graph/Network$-CC;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$predecessors(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic $default$successors(Lcom/google/common/graph/Network;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    invoke-interface {p0, p1}, Lcom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
