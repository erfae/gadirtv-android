.class final enum Lcom/google/common/graph/Traverser$InsertionOrder$1;
.super Lcom/google/common/graph/Traverser$InsertionOrder;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$InsertionOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "FRONT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$1;)V

    return-void
.end method


# virtual methods
.method public final insertInto(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method
