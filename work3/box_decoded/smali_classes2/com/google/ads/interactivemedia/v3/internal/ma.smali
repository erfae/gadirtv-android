.class public final Lcom/google/ads/interactivemedia/v3/internal/ma;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abq;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:J

.field private s:I

.field private t:J

.field private u:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ma;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ma;->a:[B

    const/16 v2, 0xa

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->d()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->n:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->r:J

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->b:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->e:Ljava/lang/String;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ix;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->u:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->v:J

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->s:I

    return-void
.end method

.method private static final a(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const v0, 0xff00

    or-int/2addr p0, v0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(I)Z

    move-result p0

    return p0
.end method

.method public static a(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    .line 73
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final b(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    const/4 p0, 0x1

    return p0
.end method

.method private final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->m:Z

    .line 84
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->d()V

    return-void
.end method

.method private final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->k:I

    return-void
.end method

.method private final e()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->c()V

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->t:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->g:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    .line 6
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_1a

    iget v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v10, :cond_7

    const/16 v3, 0xa

    if-eq v0, v9, :cond_6

    if-eq v0, v5, :cond_1

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->s:I

    iget v2, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->u:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 40
    invoke-interface {v1, v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    iget v12, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->s:I

    if-ne v1, v12, :cond_0

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->u:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v9, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->t:J

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 41
    invoke-interface/range {v8 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->t:J

    iget-wide v2, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->v:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->t:J

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->d()V

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->l:Z

    const/4 v11, 0x5

    if-eq v10, v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    :goto_1
    iget-object v12, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v12, v12, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 43
    invoke-direct {v6, v7, v12, v0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 44
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-boolean v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->q:Z

    if-nez v0, :cond_4

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 45
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    add-int/2addr v0, v10

    if-eq v0, v9, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v12, 0x3d

    .line 46
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Detected audio object type: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdtsReader"

    .line 47
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 48
    invoke-virtual {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 49
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    iget v3, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    .line 50
    sget v11, Lcom/google/ads/interactivemedia/v3/internal/ez;->a:I

    new-array v9, v9, [B

    shr-int/lit8 v11, v3, 0x1

    and-int/2addr v11, v2

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    shl-int/lit8 v2, v3, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    .line 51
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/ez;->a([B)Lcom/google/ads/interactivemedia/v3/internal/ey;

    move-result-object v0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 52
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v3, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->f:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v3, "audio/mp4a-latm"

    .line 54
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ey;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ey;->b:I

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ey;->a:I

    .line 57
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 58
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    const-wide/32 v2, 0x3d090000

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    int-to-long v8, v5

    .line 61
    div-long/2addr v2, v8

    iput-wide v2, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->r:J

    iget-object v2, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->g:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 62
    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput-boolean v10, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->q:Z

    goto :goto_2

    .line 66
    :cond_4
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 63
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 62
    :goto_2
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 64
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    iget-boolean v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->l:Z

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, -0x2

    :cond_5
    move v5, v0

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->g:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v2, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->r:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;JII)V

    goto/16 :goto_0

    .line 37
    :cond_6
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 67
    invoke-direct {v6, v7, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 68
    invoke-interface {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v1, 0x6

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const-wide/16 v4, 0x0

    const/16 v8, 0xa

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 70
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v0

    add-int/lit8 v9, v0, 0xa

    move-object/from16 v0, p0

    move-wide v2, v4

    move v4, v8

    move v5, v9

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;JII)V

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v8

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 35
    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 36
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    iget v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    if-eq v1, v3, :cond_8

    if-eq v0, v1, :cond_8

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->c()V

    goto/16 :goto_0

    :cond_8
    iget-boolean v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->m:Z

    if-nez v1, :cond_9

    iput-boolean v10, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->m:Z

    iget v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->p:I

    iput v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->n:I

    iput v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    .line 37
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->e()V

    goto/16 :goto_0

    .line 7
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_19

    add-int/lit8 v13, v11, 0x1

    .line 10
    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    iget v14, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->k:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_13

    int-to-byte v14, v11

    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(B)Z

    move-result v14

    if-eqz v14, :cond_13

    iget-boolean v14, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->m:Z

    if-nez v14, :cond_10

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 11
    invoke-virtual {v7, v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v15, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v15, v15, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 12
    invoke-static {v7, v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/ma;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_7

    .line 31
    :cond_b
    iget-object v15, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 13
    invoke-virtual {v15, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v15, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 14
    invoke-virtual {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v15

    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->n:I

    if-eq v8, v3, :cond_c

    if-ne v15, v8, :cond_13

    :cond_c
    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    if-eq v8, v3, :cond_e

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 15
    invoke-static {v7, v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/ma;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    .line 28
    :cond_d
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 16
    invoke-virtual {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 17
    invoke-virtual {v8, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v8

    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->o:I

    if-ne v8, v9, :cond_13

    add-int/lit8 v8, v14, 0x2

    .line 18
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    :cond_e
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 19
    invoke-static {v7, v8, v4}, Lcom/google/ads/interactivemedia/v3/internal/ma;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;[BI)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v9, 0xe

    .line 20
    invoke-virtual {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 21
    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v8

    if-lt v8, v2, :cond_13

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    add-int/2addr v14, v8

    if-ge v14, v1, :cond_10

    .line 24
    aget-byte v8, v9, v14

    if-ne v8, v3, :cond_f

    add-int/lit8 v14, v14, 0x1

    if-eq v14, v1, :cond_10

    .line 25
    aget-byte v1, v9, v14

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(B)Z

    move-result v1

    if-eqz v1, :cond_13

    aget-byte v1, v9, v14

    and-int/lit8 v1, v1, 0x8

    shr-int/2addr v1, v5

    if-ne v1, v15, :cond_13

    goto :goto_4

    :cond_f
    const/16 v15, 0x49

    if-ne v8, v15, :cond_13

    add-int/lit8 v8, v14, 0x1

    if-eq v8, v1, :cond_10

    .line 26
    aget-byte v8, v9, v8

    const/16 v15, 0x44

    if-ne v8, v15, :cond_13

    add-int/lit8 v14, v14, 0x2

    if-eq v14, v1, :cond_10

    .line 27
    aget-byte v1, v9, v14

    const/16 v8, 0x33

    if-ne v1, v8, :cond_13

    :cond_10
    :goto_4
    and-int/lit8 v0, v11, 0x8

    shr-int/2addr v0, v5

    .line 15
    iput v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->p:I

    and-int/lit8 v0, v11, 0x1

    xor-int/2addr v0, v10

    if-eq v10, v0, :cond_11

    const/4 v0, 0x0

    goto :goto_5

    :cond_11
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->l:Z

    iget-boolean v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->m:Z

    if-nez v0, :cond_12

    iput v10, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    goto :goto_6

    .line 28
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ma;->e()V

    .line 29
    :goto_6
    invoke-virtual {v7, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto/16 :goto_0

    .line 12
    :cond_13
    :goto_7
    iget v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->k:I

    or-int v8, v1, v11

    const/16 v9, 0x149

    if-eq v8, v9, :cond_18

    const/16 v9, 0x1ff

    if-eq v8, v9, :cond_17

    const/16 v9, 0x344

    if-eq v8, v9, :cond_16

    const/16 v9, 0x433

    if-eq v8, v9, :cond_15

    const/16 v8, 0x100

    if-eq v1, v8, :cond_14

    iput v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->k:I

    add-int/lit8 v11, v13, -0x1

    const/16 v1, 0xd

    const/4 v8, 0x0

    goto :goto_a

    :cond_14
    const/4 v1, 0x2

    const/4 v8, 0x0

    goto :goto_9

    :cond_15
    const/4 v1, 0x2

    iput v1, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->i:I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ma;->a:[B

    array-length v0, v0

    iput v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->j:I

    const/4 v8, 0x0

    iput v8, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->s:I

    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 30
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 31
    invoke-virtual {v7, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto/16 :goto_0

    :cond_16
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x400

    goto :goto_8

    :cond_17
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x200

    goto :goto_8

    :cond_18
    const/4 v1, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x300

    :goto_8
    iput v9, v6, Lcom/google/ads/interactivemedia/v3/internal/ma;->k:I

    :goto_9
    move v11, v13

    const/16 v1, 0xd

    :goto_a
    const/4 v9, 0x2

    goto/16 :goto_3

    .line 32
    :cond_19
    invoke-virtual {v7, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 2

    .line 74
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 75
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->g:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->u:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->b:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 78
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 79
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 80
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string p2, "application/id3"

    .line 81
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p2

    .line 79
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ig;

    .line 83
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ig;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ma;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
