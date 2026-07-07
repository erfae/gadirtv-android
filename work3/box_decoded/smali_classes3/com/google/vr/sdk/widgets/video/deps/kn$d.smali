.class final Lcom/google/vr/sdk/widgets/video/deps/kn$d;
.super Lcom/google/vr/sdk/widgets/video/deps/nb;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nb;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->d:I

    return v0
.end method

.method public a(JJJLjava/util/List;[Lcom/google/vr/sdk/widgets/video/deps/jl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jk;",
            ">;[",
            "Lcom/google/vr/sdk/widgets/video/deps/jl;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 5
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->d:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->b(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 7
    :cond_0
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 8
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->b(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 9
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn$d;->d:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
