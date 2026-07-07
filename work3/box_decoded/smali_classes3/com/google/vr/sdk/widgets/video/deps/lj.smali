.class public abstract Lcom/google/vr/sdk/widgets/video/deps/lj;
.super Lcom/google/vr/sdk/widgets/video/deps/bq;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/bq<",
        "Lcom/google/vr/sdk/widgets/video/deps/lp;",
        "Lcom/google/vr/sdk/widgets/video/deps/lq;",
        "Lcom/google/vr/sdk/widgets/video/deps/ln;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/lm;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/lp;

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/lq;

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bq;-><init>([Lcom/google/vr/sdk/widgets/video/deps/bo;[Lcom/google/vr/sdk/widgets/video/deps/bp;)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lj;->a:Ljava/lang/String;

    const/16 p1, 0x400

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lj;->a(I)V

    return-void
.end method


# virtual methods
.method protected abstract a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/lp;Lcom/google/vr/sdk/widgets/video/deps/lq;Z)Lcom/google/vr/sdk/widgets/video/deps/ln;
    .locals 8

    .line 11
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->b:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/lj;->a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;

    move-result-object v5

    .line 13
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->c:J

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->d:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/lq;->a(JLcom/google/vr/sdk/widgets/video/deps/ll;J)V

    const/high16 p1, -0x80000000

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/lq;->c(I)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/ln; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bo;Lcom/google/vr/sdk/widgets/video/deps/bp;Z)Ljava/lang/Exception;
    .locals 0

    .line 18
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lp;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/lq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lj;->a(Lcom/google/vr/sdk/widgets/video/deps/lp;Lcom/google/vr/sdk/widgets/video/deps/lq;Z)Lcom/google/vr/sdk/widgets/video/deps/ln;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lj;->b(Ljava/lang/Throwable;)Lcom/google/vr/sdk/widgets/video/deps/ln;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bp;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/lq;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lj;->a(Lcom/google/vr/sdk/widgets/video/deps/lq;)V

    return-void
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/lq;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bq;->a(Lcom/google/vr/sdk/widgets/video/deps/bp;)V

    return-void
.end method

.method protected final b(Ljava/lang/Throwable;)Lcom/google/vr/sdk/widgets/video/deps/ln;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected synthetic g()Lcom/google/vr/sdk/widgets/video/deps/bo;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lj;->i()Lcom/google/vr/sdk/widgets/video/deps/lp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic h()Lcom/google/vr/sdk/widgets/video/deps/bp;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/lj;->j()Lcom/google/vr/sdk/widgets/video/deps/lq;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Lcom/google/vr/sdk/widgets/video/deps/lp;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lp;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/lp;-><init>()V

    return-object v0
.end method

.method protected final j()Lcom/google/vr/sdk/widgets/video/deps/lq;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lk;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/lk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lj;)V

    return-object v0
.end method
