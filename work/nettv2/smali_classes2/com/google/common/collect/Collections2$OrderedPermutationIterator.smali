.class final Lcom/google/common/collect/Collections2$OrderedPermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrderedPermutationIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public nextPermutation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final computeNext()Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()V

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_0
    const/4 v3, -0x1

    if-ltz v2, :cond_2

    .line 6
    iget-object v4, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_3

    .line 7
    iput-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    goto :goto_3

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v4, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    :goto_2
    if-le v4, v2, :cond_5

    .line 12
    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-static {v1, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 15
    iget-object v3, p0, Lcom/google/common/collect/Collections2$OrderedPermutationIterator;->nextPermutation:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :goto_3
    move-object v1, v0

    :goto_4
    return-object v1

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
