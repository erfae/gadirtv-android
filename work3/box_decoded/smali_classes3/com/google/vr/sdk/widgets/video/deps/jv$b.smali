.class public final Lcom/google/vr/sdk/widgets/video/deps/jv$b;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/google/vr/sdk/widgets/video/deps/jd;

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/kf;

.field public final c:Lcom/google/vr/sdk/widgets/video/deps/jt;

.field private final d:J

.field private final e:J


# direct methods
.method constructor <init>(JILcom/google/vr/sdk/widgets/video/deps/kf;ZZLcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 8

    .line 2
    invoke-static {p3, p4, p5, p6, p7}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(ILcom/google/vr/sdk/widgets/video/deps/kf;ZZLcom/google/vr/sdk/widgets/video/deps/dc;)Lcom/google/vr/sdk/widgets/video/deps/jd;

    move-result-object v4

    .line 3
    invoke-virtual {p4}, Lcom/google/vr/sdk/widgets/video/deps/kf;->e()Lcom/google/vr/sdk/widgets/video/deps/jt;

    move-result-object v7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-void
.end method

.method private constructor <init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d:J

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 9
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    .line 10
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    .line 11
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    return-void
.end method

.method private static a(ILcom/google/vr/sdk/widgets/video/deps/kf;ZZLcom/google/vr/sdk/widgets/video/deps/dc;)Lcom/google/vr/sdk/widgets/video/deps/jd;
    .locals 10

    .line 65
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "application/x-rawcc"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ey;

    iget-object p3, p1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-direct {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ey;-><init>(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_2

    .line 70
    :cond_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/do;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    const/4 v4, 0x4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz p3, :cond_4

    const-string p2, "application/cea-608"

    .line 77
    invoke-static {v2, p2, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    .line 78
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 79
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    move-object v8, p2

    .line 80
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/eb;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 81
    :goto_2
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kf;->c:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-direct {p3, p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cr;ILcom/google/vr/sdk/widgets/video/deps/l;)V

    return-object p3
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/webm"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/webm"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/pb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J
    .locals 5

    .line 45
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jz;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 46
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 47
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object p2

    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 49
    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/jz;->f:J

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide p1

    .line 51
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a()J

    move-result-wide v0

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c(J)J

    move-result-wide p1

    .line 52
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a()J

    move-result-wide p1

    return-wide p1
.end method

.method a(JLcom/google/vr/sdk/widgets/video/deps/kf;)Lcom/google/vr/sdk/widgets/video/deps/jv$b;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ht;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 13
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kf;->e()Lcom/google/vr/sdk/widgets/video/deps/jt;

    move-result-object v8

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/google/vr/sdk/widgets/video/deps/kf;->e()Lcom/google/vr/sdk/widgets/video/deps/jt;

    move-result-object v9

    if-nez v8, :cond_0

    .line 16
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-object v9

    .line 17
    :cond_0
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/jt;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-object v10

    .line 19
    :cond_1
    invoke-interface {v8, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jt;->c(J)I

    move-result v1

    if-nez v1, :cond_2

    .line 21
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-object v10

    .line 22
    :cond_2
    invoke-interface {v8}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 24
    invoke-interface {v8, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(J)J

    move-result-wide v10

    .line 25
    invoke-interface {v8, v4, v5, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jt;->b(JJ)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 26
    invoke-interface {v9}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a()J

    move-result-wide v12

    .line 27
    invoke-interface {v9, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(J)J

    move-result-wide v14

    .line 28
    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    cmp-long v1, v10, v14

    if-nez v1, :cond_3

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    :goto_0
    sub-long/2addr v4, v12

    add-long/2addr v6, v4

    goto :goto_1

    :cond_3
    if-ltz v1, :cond_4

    .line 34
    invoke-interface {v8, v14, v15, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 35
    :goto_1
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-object v10

    .line 32
    :cond_4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ht;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/ht;-><init>()V

    throw v1
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/jt;)Lcom/google/vr/sdk/widgets/video/deps/jv$b;
    .locals 9

    .line 36
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d:J

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JLcom/google/vr/sdk/widgets/video/deps/kf;Lcom/google/vr/sdk/widgets/video/deps/jd;JLcom/google/vr/sdk/widgets/video/deps/jt;)V

    return-object v8
.end method

.method public b()I
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d:J

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jt;->c(J)I

    move-result v0

    return v0
.end method

.method public b(J)J
    .locals 5

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d:J

    .line 41
    invoke-interface {v2, p1, p2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/jt;->b(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b()I

    move-result v0

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 56
    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v3

    sub-long/2addr p3, v3

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    .line 59
    invoke-virtual {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c(J)J

    move-result-wide p1

    :goto_0
    sub-long/2addr p1, v1

    return-wide p1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a()J

    move-result-wide p1

    int-to-long p3, v0

    add-long/2addr p1, p3

    goto :goto_0
.end method

.method public c(J)J
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public d(J)Lcom/google/vr/sdk/widgets/video/deps/ke;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jt;->b(J)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object p1

    return-object p1
.end method
