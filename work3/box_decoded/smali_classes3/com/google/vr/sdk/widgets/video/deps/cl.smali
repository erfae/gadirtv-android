.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cl;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cl$a;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$f;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$d;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$e;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$c;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$g;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

.field protected final b:Lcom/google/vr/sdk/widgets/video/deps/cl$g;

.field protected c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

.field private final d:I


# direct methods
.method protected constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cl$e;Lcom/google/vr/sdk/widgets/video/deps/cl$g;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->b:Lcom/google/vr/sdk/widgets/video/deps/cl$g;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->d:I

    .line 4
    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cl$e;JJJJJJ)V

    iput-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 2

    .line 63
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    iput-wide p2, p4, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cl$c;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->b:Lcom/google/vr/sdk/widgets/video/deps/cl$g;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cl$g;

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    .line 14
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$d;)J

    move-result-wide v2

    .line 15
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$d;)J

    move-result-wide v4

    .line 16
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->d(Lcom/google/vr/sdk/widgets/video/deps/cl$d;)J

    move-result-wide v6

    sub-long/2addr v4, v2

    .line 17
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->d:I

    int-to-long v8, v8

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gtz v11, :cond_0

    .line 18
    invoke-virtual {p0, v10, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ZJ)V

    .line 19
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 20
    :cond_0
    invoke-virtual {p0, p1, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 22
    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 24
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->e(Lcom/google/vr/sdk/widgets/video/deps/cl$d;)J

    move-result-wide v2

    .line 25
    invoke-interface {v0, p1, v2, v3, p3}, Lcom/google/vr/sdk/widgets/video/deps/cl$g;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cl$c;)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    const/4 p3, 0x1

    .line 36
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v0

    .line 37
    invoke-virtual {p0, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ZJ)V

    .line 38
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z

    .line 40
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v0

    .line 41
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v5

    .line 29
    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$d;JJ)V

    goto :goto_0

    .line 32
    :cond_4
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$f;)J

    move-result-wide v5

    .line 33
    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$d;JJ)V

    goto/16 :goto_0

    .line 42
    :cond_5
    invoke-virtual {p0, v10, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ZJ)V

    .line 43
    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$d;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(J)Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    return-void
.end method

.method protected final a(ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(ZJ)V

    return-void
.end method

.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    long-to-int p3, p2

    .line 60
    invoke-interface {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b(J)Lcom/google/vr/sdk/widgets/video/deps/cl$d;
    .locals 17

    move-object/from16 v0, p0

    .line 46
    new-instance v16, Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    move-wide/from16 v2, p1

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->b(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    .line 48
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    .line 49
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    .line 50
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    .line 51
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->d(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    .line 52
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->e(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/cl$d;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method protected b(ZJ)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->c:Lcom/google/vr/sdk/widgets/video/deps/cl$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
