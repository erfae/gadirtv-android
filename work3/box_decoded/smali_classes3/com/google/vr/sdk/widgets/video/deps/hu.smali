.class public final Lcom/google/vr/sdk/widgets/video/deps/hu;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ie;
.implements Lcom/google/vr/sdk/widgets/video/deps/ie$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/hu$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/ie;

.field b:J

.field c:J

.field private d:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

.field private e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ie;ZJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    .line 5
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    .line 6
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    return-void
.end method

.method private static a(J[Lcom/google/vr/sdk/widgets/video/deps/nf;)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 87
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    .line 90
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b(JLcom/google/vr/sdk/widgets/video/deps/ad;)Lcom/google/vr/sdk/widgets/video/deps/ad;
    .locals 9

    .line 78
    iget-wide v0, p3, Lcom/google/vr/sdk/widgets/video/deps/ad;->f:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JJJ)J

    move-result-wide v0

    .line 80
    iget-wide v2, p3, Lcom/google/vr/sdk/widgets/video/deps/ad;->g:J

    .line 81
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_0
    const-wide/16 v4, 0x0

    .line 82
    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JJJ)J

    move-result-wide p1

    .line 83
    iget-wide v2, p3, Lcom/google/vr/sdk/widgets/video/deps/ad;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v2, p3, Lcom/google/vr/sdk/widgets/video/deps/ad;->g:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object p3

    .line 85
    :cond_1
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/ad;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ad;-><init>(JJ)V

    return-object p3
.end method


# virtual methods
.method public a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J
    .locals 3

    .line 64
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 66
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/hu;->b(JLcom/google/vr/sdk/widgets/video/deps/ad;)Lcom/google/vr/sdk/widgets/video/deps/ad;

    move-result-object p3

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 14
    array-length v2, v1

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    .line 15
    array-length v2, v1

    new-array v9, v2, [Lcom/google/vr/sdk/widgets/video/deps/is;

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 16
    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    .line 17
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aget-object v4, v1, v2

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aput-object v4, v3, v2

    .line 18
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    iget-object v11, v3, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    :cond_0
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 21
    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJ)J

    move-result-wide v2

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    move-object v6, p1

    .line 25
    invoke-static {v4, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/hu;->a(J[Lcom/google/vr/sdk/widgets/video/deps/nf;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    :goto_1
    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    .line 28
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 29
    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    .line 30
    aget-object v4, v9, v10

    if-nez v4, :cond_5

    .line 31
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aput-object v11, v4, v10

    goto :goto_5

    .line 32
    :cond_5
    aget-object v4, v1, v10

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/is;

    aget-object v5, v9, v10

    if-eq v4, v5, :cond_7

    .line 33
    :cond_6
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/hu$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/hu;Lcom/google/vr/sdk/widgets/video/deps/is;)V

    aput-object v5, v4, v10

    .line 34
    :cond_7
    :goto_5
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-wide v2
.end method

.method public a(J)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(JZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie$a;J)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->d:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(Lcom/google/vr/sdk/widgets/video/deps/ie$a;J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->d:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    return-void
.end method

.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/it;)V
    .locals 0

    .line 94
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/hu;->b(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    return-void
.end method

.method public a_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a_()V

    return-void
.end method

.method public b(J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->e:[Lcom/google/vr/sdk/widgets/video/deps/hu$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/hu$a;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ie;->b(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    .line 62
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    return-wide v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->b()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->d:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return-void
.end method

.method public c()J
    .locals 9

    .line 41
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->f()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 42
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    .line 43
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/hu;->c()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 49
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->b:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 50
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    return-wide v3
.end method

.method public c(J)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ie;->c(J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 53
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public e()J
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 69
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method f()Z
    .locals 5

    .line 77
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/hu;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
