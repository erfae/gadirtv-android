.class public Lcom/google/vr/sdk/widgets/video/deps/kg$c;
.super Lcom/google/vr/sdk/widgets/video/deps/kg$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final g:Lcom/google/vr/sdk/widgets/video/deps/ki;

.field final h:Lcom/google/vr/sdk/widgets/video/deps/ki;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/ki;Lcom/google/vr/sdk/widgets/video/deps/ki;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ke;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kg$d;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/ki;",
            "Lcom/google/vr/sdk/widgets/video/deps/ki;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/kg$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ke;JJJJLjava/util/List;)V

    .line 2
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->g:Lcom/google/vr/sdk/widgets/video/deps/ki;

    .line 3
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->h:Lcom/google/vr/sdk/widgets/video/deps/ki;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/kf;)Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 13

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->g:Lcom/google/vr/sdk/widgets/video/deps/ki;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ki;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ke;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ke;-><init>(Ljava/lang/String;JJ)V

    return-object p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/kg$a;->a(Lcom/google/vr/sdk/widgets/video/deps/kf;)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/kf;J)Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 9
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->f:Ljava/util/List;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->d:J

    sub-long v3, p2, v3

    long-to-int v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/kg$d;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kg$d;->a:J

    goto :goto_0

    .line 11
    :cond_0
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->d:J

    sub-long v2, p2, v2

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->e:J

    mul-long v2, v2, v4

    :goto_0
    move-wide v6, v2

    .line 12
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->h:Lcom/google/vr/sdk/widgets/video/deps/ki;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ki;->a(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v9

    .line 13
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ke;

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ke;-><init>(Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public b(J)I
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->e:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kg$c;->b:J

    div-long/2addr v0, v2

    .line 18
    invoke-static {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
