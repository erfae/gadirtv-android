.class Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;
.super Lcom/google/common/collect/DescendingMultiset;
.source "AbstractSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DescendingMultiset<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/AbstractSortedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractSortedMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public final entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final forwardMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/AbstractSortedMultiset$1DescendingMultisetImpl;->this$0:Lcom/google/common/collect/AbstractSortedMultiset;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
