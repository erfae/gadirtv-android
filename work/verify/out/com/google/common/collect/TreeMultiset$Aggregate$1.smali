.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$1;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "SIZE"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method public final nodeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation

    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result p1

    return p1
.end method

.method public final treeAggregate(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 4
    .param p1    # Lcom/google/common/collect/TreeMultiset$AvlNode;
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

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    # getter for: Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v0

    :goto_9
    return-wide v0
.end method
