.class final Lpl/droidsonroids/gif/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifRenderingExecutor$InstanceHolder;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpl/droidsonroids/gif/GifRenderingExecutor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifRenderingExecutor;-><init>()V

    return-void
.end method
