.class public Lcom/google/vr/sdk/widgets/video/deps/ba$b;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/an;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/bf;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/bh;


# direct methods
.method public varargs constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/an;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/an;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->a:[Lcom/google/vr/sdk/widgets/video/deps/an;

    .line 3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/bf;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/bf;-><init>()V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    .line 4
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/bh;-><init>()V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->c:Lcom/google/vr/sdk/widgets/video/deps/bh;

    .line 5
    array-length v3, p1

    aput-object v1, v0, v3

    .line 6
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->c:Lcom/google/vr/sdk/widgets/video/deps/bh;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    iget-boolean v1, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bf;->a(Z)V

    .line 10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/u;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->c:Lcom/google/vr/sdk/widgets/video/deps/bh;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/bh;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->c:Lcom/google/vr/sdk/widgets/video/deps/bh;

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->c:F

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bh;->b(F)F

    move-result v2

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/u;-><init>(FFZ)V

    return-object v0
.end method

.method public a()[Lcom/google/vr/sdk/widgets/video/deps/an;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->a:[Lcom/google/vr/sdk/widgets/video/deps/an;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ba$b;->b:Lcom/google/vr/sdk/widgets/video/deps/bf;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bf;->j()J

    move-result-wide v0

    return-wide v0
.end method
