.class final Lcom/google/vr/sdk/widgets/video/deps/jq$a;
.super Lcom/google/vr/sdk/widgets/video/deps/af;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/jz;

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JJIJJJLcom/google/vr/sdk/widgets/video/deps/jz;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/af;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->b:J

    .line 3
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c:J

    .line 4
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->d:I

    .line 5
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->e:J

    .line 6
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->f:J

    .line 7
    iput-wide p10, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->g:J

    .line 8
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 9
    iput-object p13, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->i:Ljava/lang/Object;

    return-void
.end method

.method private a(J)J
    .locals 8

    .line 30
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->g:J

    .line 31
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    add-long/2addr v0, p1

    .line 35
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->f:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 38
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->e:J

    add-long/2addr p1, v0

    .line 39
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v4

    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    cmp-long v6, p1, v4

    if-ltz v6, :cond_2

    sub-long/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v4

    goto :goto_0

    .line 44
    :cond_2
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 45
    invoke-virtual {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v2

    const/4 v6, 0x2

    .line 46
    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/kd;->a(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    return-wide v0

    .line 49
    :cond_3
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kd;->c:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/jy;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/jy;->c:Ljava/util/List;

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/kf;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/kf;->e()Lcom/google/vr/sdk/widgets/video/deps/jt;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 51
    invoke-interface {v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/jt;->c(J)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    invoke-interface {v2, p1, p2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(JJ)J

    move-result-wide v3

    .line 54
    invoke-interface {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/jt;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_5
    :goto_1
    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .line 25
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->d:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Z)Lcom/google/vr/sdk/widgets/video/deps/af$a;
    .locals 11

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kd;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 14
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->d:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 15
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->e:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 17
    invoke-virtual/range {v3 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/af$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/af$b;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 19
    invoke-static {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(III)I

    move-wide/from16 v3, p4

    .line 20
    invoke-direct {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->a(J)J

    move-result-wide v11

    if-eqz p3, :cond_0

    .line 21
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 22
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->b:J

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c:J

    const/4 v9, 0x1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->f:J

    const/4 v15, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->e:J

    move-object/from16 v3, p2

    move-wide/from16 v17, v1

    .line 24
    invoke-virtual/range {v3 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/af$b;->a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v1

    return-object v1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(III)I

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->d:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jq$a;->h:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v0

    return v0
.end method
