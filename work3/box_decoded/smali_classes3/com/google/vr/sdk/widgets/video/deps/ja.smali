.class public abstract Lcom/google/vr/sdk/widgets/video/deps/ja;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/jl;


# instance fields
.field private final b:J

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ja;->b:J

    .line 3
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ja;->c:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ja;->d:J

    return-void
.end method
