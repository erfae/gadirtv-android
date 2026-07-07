.class final Lcom/google/vr/sdk/widgets/video/deps/dv;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dt$a;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    .line 36
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->b:[J

    .line 37
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->c:J

    return-void
.end method

.method public static a(JJLcom/google/vr/sdk/widgets/video/deps/cy;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/dv;
    .locals 20

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    .line 1
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    .line 5
    :cond_0
    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/cy;->d:I

    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v11, v4

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 8
    invoke-static/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v6

    .line 9
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v4

    .line 10
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v8

    .line 11
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v9

    const/4 v10, 0x2

    .line 12
    invoke-virtual {v3, v10}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 13
    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    int-to-long v11, v2

    add-long v11, p2, v11

    .line 14
    new-array v2, v4, [J

    .line 15
    new-array v13, v4, [J

    const/4 v14, 0x0

    move-wide/from16 v14, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    move-wide/from16 v16, v11

    int-to-long v10, v5

    mul-long v10, v10, v6

    move-wide/from16 v18, v6

    int-to-long v6, v4

    .line 17
    div-long/2addr v10, v6

    aput-wide v10, v2, v5

    move-wide/from16 v6, v16

    .line 18
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    aput-wide v10, v13, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    const/4 v11, 0x0

    return-object v11

    :cond_2
    const/4 v11, 0x0

    .line 26
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v12

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 24
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v12

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 22
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v12

    goto :goto_2

    :cond_5
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 20
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v12

    :goto_2
    mul-int v12, v12, v8

    int-to-long v10, v12

    add-long/2addr v14, v10

    add-int/lit8 v5, v5, 0x1

    move-wide v11, v6

    move-wide/from16 v6, v18

    const/4 v10, 0x2

    goto :goto_1

    :cond_6
    move-wide/from16 v18, v6

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_7

    cmp-long v3, v0, v14

    if-eqz v3, :cond_7

    const/16 v3, 0x43

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dv;

    move-wide/from16 v3, v18

    invoke-direct {v0, v2, v13, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dv;-><init>([J[JJ)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 8

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result v0

    .line 41
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->b:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 42
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/db;->b:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->b:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 45
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p2, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p2

    .line 43
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->c:J

    return-wide v0
.end method

.method public c(J)J
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->a:[J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dv;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
