.class Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$AsSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public elemItr:Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final rangeItr:Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lcom/google/common/collect/ImmutableRangeSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;
    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Lcom/google/common/collect/UnmodifiableIterator;

    .line 3
    sget-object p1, Lcom/google/common/collect/Iterators$ArrayItr;->EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public final computeNext()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->rangeItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->this$1:Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    # getter for: Lcom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lcom/google/common/collect/DiscreteDomain;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;->access$100(Lcom/google/common/collect/ImmutableRangeSet$AsSet;)Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Lcom/google/common/collect/UnmodifiableIterator;

    goto :goto_0

    .line 4
    :cond_29
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()V

    const/4 v0, 0x0

    goto :goto_36

    .line 5
    :cond_2e
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSet$2;->elemItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    :goto_36
    return-object v0
.end method
