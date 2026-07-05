.class Lcom/google/common/collect/RegularContiguousSet$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$2;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    # invokes: Lcom/google/common/collect/RegularContiguousSet;->equalsOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$2;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    :goto_14
    return-object p1
.end method
