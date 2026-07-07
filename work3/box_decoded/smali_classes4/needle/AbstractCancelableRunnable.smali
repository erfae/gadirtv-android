.class abstract Lneedle/AbstractCancelableRunnable;
.super Ljava/lang/Object;
.source "AbstractCancelableRunnable.java"

# interfaces
.implements Lneedle/CancelableRunnable;


# instance fields
.field private mCanceled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lneedle/AbstractCancelableRunnable;->mCanceled:Z

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lneedle/AbstractCancelableRunnable;->mCanceled:Z

    return v0
.end method
