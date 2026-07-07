.class final Lcom/google/vr/sdk/widgets/video/deps/fz$a;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:I


# direct methods
.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->c:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const p2, 0x92e0

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_5

    .line 17
    iget-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v14

    invoke-static {v13, v14, v4}, Lcom/google/vr/sdk/widgets/video/deps/ge;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v4, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->c:I

    invoke-static {v1, v13, v5}, Lcom/google/vr/sdk/widgets/video/deps/ge;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_4

    .line 24
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v15, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_2

    cmp-long v1, v11, v7

    if-nez v1, :cond_1

    .line 27
    invoke-static {v5, v6, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object v1

    return-object v1

    :cond_1
    add-long v1, v2, v9

    .line 28
    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(J)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v11, v9, p2

    if-lez v11, :cond_3

    int-to-long v4, v13

    add-long v1, v2, v4

    .line 31
    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a(J)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object v1

    return-object v1

    :cond_3
    int-to-long v9, v13

    move-wide v11, v5

    .line 34
    :cond_4
    invoke-virtual {v1, v14}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_5
    :goto_1
    cmp-long v1, v11, v7

    if-eqz v1, :cond_6

    add-long v1, v2, v5

    .line 39
    invoke-static {v11, v12, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->b(JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object v1

    return-object v1

    .line 40
    :cond_6
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/cl$f;->a:Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;JLcom/google/vr/sdk/widgets/video/deps/cl$c;)Lcom/google/vr/sdk/widgets/video/deps/cl$f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    .line 8
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x92e0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p4, v0

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, p4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 11
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fz$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;JJ)Lcom/google/vr/sdk/widgets/video/deps/cl$f;

    move-result-object p1

    return-object p1
.end method
