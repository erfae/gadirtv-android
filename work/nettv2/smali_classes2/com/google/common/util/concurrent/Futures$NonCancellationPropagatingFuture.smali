.class final Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonCancellationPropagatingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final afterDone()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final pendingToString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    const-string v2, "delegate=["

    const-string v3, "]"

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    :cond_0
    return-void
.end method
