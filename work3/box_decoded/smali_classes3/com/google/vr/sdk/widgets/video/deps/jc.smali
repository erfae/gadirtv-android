.class public abstract Lcom/google/vr/sdk/widgets/video/deps/jc;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$d;


# instance fields
.field public final b:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field public final c:I

.field public final d:Lcom/google/vr/sdk/widgets/video/deps/l;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/vr/sdk/widgets/video/deps/on;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/on;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nv;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    .line 7
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    .line 9
    iput-wide p9, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 4

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->f()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jc;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/on;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
