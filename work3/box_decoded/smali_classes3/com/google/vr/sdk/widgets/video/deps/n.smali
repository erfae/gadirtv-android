.class public final Lcom/google/vr/sdk/widgets/video/deps/n;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/af;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/n;->b:I

    .line 4
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/n;->c:J

    return-void
.end method
