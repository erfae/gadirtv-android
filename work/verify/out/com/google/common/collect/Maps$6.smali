.class Lcom/google/common/collect/Maps$6;
.super Lcom/google/common/collect/ForwardingNavigableSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingNavigableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$set:Ljava/util/NavigableSet;


# direct methods
.method public constructor <init>(Ljava/util/NavigableSet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingNavigableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final delegate()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final delegate()Ljava/util/Collection;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final delegate()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final delegate()Ljava/util/Set;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final delegate()Ljava/util/SortedSet;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/Maps$6;->val$set:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/ForwardingNavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    # invokes: Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    # invokes: Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingSortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    # invokes: Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ForwardingNavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    .line 3
    # invokes: Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    # invokes: Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    # invokes: Lcom/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingSortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    # invokes: Lcom/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
