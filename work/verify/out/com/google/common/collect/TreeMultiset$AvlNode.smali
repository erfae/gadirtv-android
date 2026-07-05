.class final Lcom/google/common/collect/TreeMultiset$AvlNode;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AvlNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private distinctElements:I

.field private final elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private elemCount:I

.field private height:I

.field private left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private totalCount:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 2
    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long p1, p2

    .line 5
    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 6
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 7
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return p0
.end method

.method public static synthetic access$202(Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return-void
.end method

.method public static synthetic access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 1

    iget p0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    return p0
.end method

.method public static synthetic access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-void
.end method

.method public static synthetic access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-void
.end method

.method public static synthetic access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$802(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method private addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    # invokes: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 4
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-object p0
.end method

.method private addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    # invokes: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    invoke-static {p0, v0, p1}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 4
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-object p0
.end method

.method private balanceFactor()I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_e

    move-object p1, p0

    goto :goto_18

    :cond_e
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    :goto_18
    return-object p1

    :cond_19
    if-nez v0, :cond_1c

    return-object p0

    .line 4
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_22

    const/4 p1, 0x0

    goto :goto_26

    :cond_22
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    :goto_26
    return-object p1
.end method

.method private deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    # invokes: Lcom/google/common/collect/TreeMultiset;->successor(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V
    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1900(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_17

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0

    .line 6
    :cond_17
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_1c

    return-object v1

    .line 7
    :cond_1c
    iget v1, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-lt v1, v2, :cond_43

    .line 8
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 10
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 11
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 12
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 13
    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0

    .line 14
    :cond_43
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 16
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 17
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 18
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 19
    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method private floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_e

    move-object p1, p0

    goto :goto_18

    :cond_e
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    :goto_18
    return-object p1

    :cond_19
    if-nez v0, :cond_1c

    return-object p0

    .line 4
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_22

    const/4 p1, 0x0

    goto :goto_26

    :cond_22
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    :goto_26
    return-object p1
.end method

.method private static height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 1
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    :goto_6
    return p0
.end method

.method private pred()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    return-object p0

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-gez v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 6
    :cond_23
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0

    .line 7
    :cond_28
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-lez v0, :cond_3d

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 10
    :cond_3d
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method private recompute()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeMultiset()V

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    return-void
.end method

.method private recomputeHeight()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    return-void
.end method

.method private recomputeMultiset()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    sget v1, Lcom/google/common/collect/TreeMultiset;->$r8$clinit:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    .line 3
    :cond_9
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_14

    goto :goto_18

    .line 5
    :cond_14
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 7
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-void
.end method

.method private removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_7

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1

    .line 3
    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 4
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1
.end method

.method private removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_7

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1

    .line 3
    :cond_7
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 4
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1
.end method

.method private rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 4
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 5
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 6
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 8
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    return-object v0
.end method

.method private rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 4
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 5
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 6
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 8
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    return-object v0
.end method

.method private succ()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 3
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    :goto_7
    return-wide v0
.end method


# virtual methods
.method public final add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 12
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_37

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_15

    .line 4
    aput v1, p4, v1

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_15
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 8
    aget p2, p4, v1

    if-nez p2, :cond_26

    .line 9
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 10
    :cond_26
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 11
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-ne p1, v3, :cond_32

    move-object p1, p0

    goto :goto_36

    :cond_32
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    :goto_36
    return-object p1

    :cond_37
    if-lez v0, :cond_66

    .line 12
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_44

    .line 13
    aput v1, p4, v1

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 15
    :cond_44
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 17
    aget p2, p4, v1

    if-nez p2, :cond_55

    .line 18
    iget p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 19
    :cond_55
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p2, p3

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 20
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-ne p1, v3, :cond_61

    move-object p1, p0

    goto :goto_65

    :cond_61
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    :goto_65
    return-object p1

    .line 21
    :cond_66
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput p1, p4, v1

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p4, p1, v5

    if-gtz p4, :cond_75

    const/4 v1, 0x1

    .line 22
    :cond_75
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 23
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 24
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-object p0
.end method

.method public final count(Ljava/util/Comparator;Ljava/lang/Object;)I
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_12
    return v1

    :cond_13
    if-lez v0, :cond_1f

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_1e
    return v1

    .line 5
    :cond_1f
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return p1
.end method

.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 9
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_3e

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_10

    .line 4
    aput v1, p4, v1

    return-object p0

    .line 5
    :cond_10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 6
    aget p1, p4, v1

    if-lez p1, :cond_33

    .line 7
    aget p1, p4, v1

    if-lt p3, p1, :cond_2d

    .line 8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 9
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p3, p4, v1

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_33

    .line 10
    :cond_2d
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 11
    :cond_33
    :goto_33
    aget p1, p4, v1

    if-nez p1, :cond_39

    move-object p1, p0

    goto :goto_3d

    :cond_39
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    :goto_3d
    return-object p1

    :cond_3e
    if-lez v0, :cond_6f

    .line 12
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_47

    .line 13
    aput v1, p4, v1

    return-object p0

    .line 14
    :cond_47
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 15
    aget p1, p4, v1

    if-lez p1, :cond_6a

    .line 16
    aget p1, p4, v1

    if-lt p3, p1, :cond_64

    .line 17
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 18
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p3, p4, v1

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_6a

    .line 19
    :cond_64
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 20
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6f
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_7a

    .line 22
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    :cond_7a
    sub-int/2addr p1, p3

    .line 23
    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 24
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-object p0
.end method

.method public final setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 14
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4f

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_19

    .line 4
    aput v1, p5, v1

    if-nez p3, :cond_18

    if-lez p4, :cond_18

    .line 5
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    :cond_18
    return-object p0

    :cond_19
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 7
    aget p1, p5, v1

    if-ne p1, p3, :cond_4a

    if-nez p4, :cond_35

    .line 8
    aget p1, p5, v1

    if-eqz p1, :cond_35

    .line 9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_41

    :cond_35
    if-lez p4, :cond_41

    .line 10
    aget p1, p5, v1

    if-nez p1, :cond_41

    .line 11
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 12
    :cond_41
    :goto_41
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 13
    :cond_4a
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    :cond_4f
    if-lez v0, :cond_97

    .line 14
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_61

    .line 15
    aput v1, p5, v1

    if-nez p3, :cond_60

    if-lez p4, :cond_60

    .line 16
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    :cond_60
    return-object p0

    :cond_61
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 18
    aget p1, p5, v1

    if-ne p1, p3, :cond_92

    if-nez p4, :cond_7d

    .line 19
    aget p1, p5, v1

    if-eqz p1, :cond_7d

    .line 20
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_89

    :cond_7d
    if-lez p4, :cond_89

    .line 21
    aget p1, p5, v1

    if-nez p1, :cond_89

    .line 22
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 23
    :cond_89
    :goto_89
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 24
    :cond_92
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 25
    :cond_97
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_ae

    if-nez p4, :cond_a4

    .line 26
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 27
    :cond_a4
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 28
    iput p4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    :cond_ae
    return-object p0
.end method

.method public final setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 30
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_45

    .line 31
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_18

    .line 32
    aput v1, p4, v1

    if-lez p3, :cond_16

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    goto :goto_17

    :cond_16
    move-object p1, p0

    :goto_17
    return-object p1

    .line 34
    :cond_18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez p3, :cond_2b

    .line 35
    aget p1, p4, v1

    if-eqz p1, :cond_2b

    .line 36
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_37

    :cond_2b
    if-lez p3, :cond_37

    .line 37
    aget p1, p4, v1

    if-nez p1, :cond_37

    .line 38
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 39
    :cond_37
    :goto_37
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    :cond_45
    if-lez v0, :cond_83

    .line 41
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_56

    .line 42
    aput v1, p4, v1

    if-lez p3, :cond_54

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    goto :goto_55

    :cond_54
    move-object p1, p0

    :goto_55
    return-object p1

    .line 44
    :cond_56
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez p3, :cond_69

    .line 45
    aget p1, p4, v1

    if-eqz p1, :cond_69

    .line 46
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_75

    :cond_69
    if-lez p3, :cond_75

    .line 47
    aget p1, p4, v1

    if-nez p1, :cond_75

    .line 48
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 49
    :cond_75
    :goto_75
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 50
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 51
    :cond_83
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput p1, p4, v1

    if-nez p3, :cond_8e

    .line 52
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p1

    return-object p1

    .line 53
    :cond_8e
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 54
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 2
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
