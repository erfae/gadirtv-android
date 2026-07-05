.class Lcom/google/common/graph/Traverser$1;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser;->forGraph(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/Traverser<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$graph:Lcom/google/common/graph/SuccessorsFunction;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/SuccessorsFunction;Lcom/google/common/graph/SuccessorsFunction;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/graph/Traverser$1;->val$graph:Lcom/google/common/graph/SuccessorsFunction;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;Lcom/google/common/graph/Traverser$1;)V

    return-void
.end method


# virtual methods
.method public final newTraversal()Lcom/google/common/graph/Traverser$Traversal;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$Traversal<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/Traverser$1;->val$graph:Lcom/google/common/graph/SuccessorsFunction;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Lcom/google/common/graph/Traverser$Traversal$1;

    invoke-direct {v2, v0, v1}, Lcom/google/common/graph/Traverser$Traversal$1;-><init>(Lcom/google/common/graph/SuccessorsFunction;Ljava/util/Set;)V

    return-object v2
.end method
