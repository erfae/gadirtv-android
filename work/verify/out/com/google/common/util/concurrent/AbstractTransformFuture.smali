.class abstract Lcom/google/common/util/concurrent/AbstractTransformFuture;
.super Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "AbstractTransformFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;,
        Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final afterDone()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    return-void
.end method

.method public abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final pendingToString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1d

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    const-string v4, "inputFuture=["

    const-string v5, "], "

    .line 5
    invoke-static {v3, v4, v0, v5}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    const-string v0, ""

    :goto_1f
    if-eqz v1, :cond_39

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 7
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "function=["

    const-string v4, "]"

    .line 9
    invoke-static {v3, v0, v2, v1, v4}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    if-eqz v2, :cond_51

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    :cond_4a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_50
    return-object v0

    :cond_51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->isCancelled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v2, v5

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    or-int/2addr v2, v3

    if-eqz v2, :cond_18

    return-void

    :cond_18
    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void

    .line 7
    :cond_25
    :try_start_25
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_29} :catch_51
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_29} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_29} :catch_43
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_29} :catch_3e

    .line 8
    :try_start_29
    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_33

    .line 9
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_33
    move-exception v0

    .line 11
    :try_start_34
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3a

    .line 12
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    return-void

    :catchall_3a
    move-exception v0

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 13
    throw v0

    :catch_3e
    move-exception v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_43
    move-exception v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catch_48
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 17
    :catch_51
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->cancel(Z)Z

    return-void
.end method

.method public abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
