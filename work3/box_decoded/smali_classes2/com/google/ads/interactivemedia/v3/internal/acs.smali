.class public final Lcom/google/ads/interactivemedia/v3/internal/acs;
.super Lcom/google/ads/interactivemedia/v3/internal/oc;
.source "IMASDK"


# static fields
.field private static final c:[I

.field private static final d:Ljava/lang/reflect/Method;

.field private static e:Z

.field private static f:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:J

.field private E:J

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:F

.field private K:F

.field private L:I

.field private M:I

.field private N:I

.field private O:F

.field private P:Z

.field private Q:I

.field private R:Lcom/google/ads/interactivemedia/v3/internal/act;

.field b:Lcom/google/ads/interactivemedia/v3/internal/acr;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/acw;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/adg;

.field private final j:J

.field private final k:I

.field private final l:Z

.field private m:Lcom/google/ads/interactivemedia/v3/internal/acq;

.field private n:Z

.field private o:Z

.field private p:Landroid/view/Surface;

.field private q:F

.field private r:Landroid/view/Surface;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->c:[I

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const-class v2, Landroid/view/Surface;

    const-string v3, "setFrameRate"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/acs;->d:Ljava/lang/reflect/Method;

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/oe;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;)V
    .locals 2

    const/4 v0, 0x2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3
    invoke-direct {p0, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;-><init>(ILcom/google/ads/interactivemedia/v3/internal/oe;F)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->j:J

    const/16 p2, 0x32

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->k:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->g:Landroid/content/Context;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/acw;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/acw;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->h:Lcom/google/ads/interactivemedia/v3/internal/acw;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/adg;

    .line 6
    invoke-direct {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/adg;-><init>(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    .line 7
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    const-string p2, "NVIDIA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->l:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->t:I

    .line 8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->V()V

    return-void
.end method

.method private final S()V
    .locals 3

    .line 14
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->q:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->q:F

    .line 15
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final T()V
    .locals 4

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    return-void
.end method

.method private final U()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->u:Z

    .line 12
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/acr;

    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/acr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/acs;Landroid/media/MediaCodec;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->b:Lcom/google/ads/interactivemedia/v3/internal/acr;

    :cond_0
    return-void
.end method

.method private final V()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->L:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->M:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->O:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->N:I

    return-void
.end method

.method private final W()V
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->L:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->M:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->N:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->I:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->O:F

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->I:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    .line 157
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(IIIF)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->L:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->M:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->I:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->N:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->O:F

    return-void
.end method

.method private final X()V
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->L:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->M:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->M:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->N:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->O:F

    .line 158
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(IIIF)V

    return-void
.end method

.method private final Y()V
    .locals 6

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    if-lez v0, :cond_0

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->z:J

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    sub-long v2, v0, v2

    .line 155
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->z:J

    :cond_0
    return-void
.end method

.method protected static a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 3

    .line 114
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 115
    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 116
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget p0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->m:I

    add-int/2addr p0, v1

    return p0

    .line 118
    :cond_1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    invoke-static {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/oa;Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_2

    return v0

    :cond_2
    mul-int p2, p2, p3

    goto :goto_3

    .line 92
    :cond_3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v1, "KFSOWI"

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    if-nez p0, :cond_5

    :cond_4
    const/16 p0, 0x10

    .line 96
    invoke-static {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result p1

    invoke-static {p3, p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result p0

    mul-int p1, p1, p0

    mul-int/lit16 p2, p1, 0x100

    goto :goto_2

    :cond_5
    return v0

    :cond_6
    mul-int p2, p2, p3

    :goto_2
    const/4 v4, 0x2

    :goto_3
    mul-int/lit8 p2, p2, 0x3

    add-int/2addr v4, v4

    .line 91
    div-int/2addr p2, v4

    return p2

    :cond_7
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/oe;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/oe;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p1, v0, :cond_3

    const-string p1, "video/avc"

    .line 111
    invoke-interface {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/oe;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 112
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "video/hevc"

    .line 109
    invoke-interface {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/oe;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 110
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final a(JJLcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->R:Lcom/google/ads/interactivemedia/v3/internal/act;

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/act;->a()V

    :cond_0
    return-void
.end method

.method private static final a(Landroid/view/Surface;F)V
    .locals 6

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->d:Ljava/lang/reflect/Method;

    const-string v1, "MediaCodecVideoRenderer"

    if-nez v0, :cond_0

    const-string v2, "Failed to call Surface.setFrameRate (method does not exist)"

    .line 269
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    .line 270
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to call Surface.setFrameRate"

    .line 271
    invoke-static {v1, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/acs;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->P()V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/acs;Lcom/google/ads/interactivemedia/v3/internal/bo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/bo;)V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    .line 300
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->K:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->O()F

    move-result v1

    mul-float v2, v0, v1

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->q:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->q:F

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    .line 301
    invoke-static {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected static final a(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "OMX.google"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Lcom/google/ads/interactivemedia/v3/internal/acs;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/google/ads/interactivemedia/v3/internal/acs;->e:Z

    if-nez v1, :cond_a

    const-string v1, "dangal"

    .line 17
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sput-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/acs;->f:Z

    goto/16 :goto_3

    .line 21
    :cond_1
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v3, 0x1b

    if-gt v1, v3, :cond_2

    const-string v1, "HWEML"

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/acs;->f:Z

    goto/16 :goto_3

    :cond_2
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ge v1, v3, :cond_9

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    :cond_3
    const/4 v3, -0x1

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "HWWAS-H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "HWVNS-H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "ELUGA_Note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "HWCAM-H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "HWBLN-H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "Infinix-X572"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "PB2-670M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x57

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "santoni"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x67

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "iball8735_9806"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "CPH1609"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "woods_f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x77

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "EverStar_S"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "hwALE-H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "itel_S41"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "LS-5017"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x43

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "panell_d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x53

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "j2xlteins"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3d

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "A7000plus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "manning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x45

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "QM16XE_U"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x65

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5d

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "TB3-850M"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6f

    goto/16 :goto_0

    :sswitch_1d
    const-string v3, "TB3-850F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6e

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "TB3-730X"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6d

    goto/16 :goto_0

    :sswitch_1f
    const-string v3, "TB3-730F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6c

    goto/16 :goto_0

    :sswitch_20
    const-string v3, "A7020a48"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_21
    const-string v3, "A7010a48"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_22
    const-string v3, "griffin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_23
    const-string v3, "marino_f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x46

    goto/16 :goto_0

    :sswitch_24
    const-string v3, "CPY83_I00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_25
    const-string v3, "A2016a40"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x6

    goto/16 :goto_0

    :sswitch_26
    const-string v3, "le_x6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x42

    goto/16 :goto_0

    :sswitch_27
    const-string v3, "l5460"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x41

    goto/16 :goto_0

    :sswitch_28
    const-string v3, "i9031"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_29
    const-string v3, "X3_HK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x79

    goto/16 :goto_0

    :sswitch_2a
    const-string v3, "V23GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x72

    goto/16 :goto_0

    :sswitch_2b
    const-string v3, "Q4310"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x63

    goto/16 :goto_0

    :sswitch_2c
    const-string v3, "Q4260"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x61

    goto/16 :goto_0

    :sswitch_2d
    const-string v3, "PRO7S"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5f

    goto/16 :goto_0

    :sswitch_2e
    const-string v3, "F3311"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_2f
    const-string v3, "F3215"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_30
    const-string v3, "F3213"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_31
    const-string v3, "F3211"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_32
    const-string v3, "F3116"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_33
    const-string v3, "F3113"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_34
    const-string v3, "F3111"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_35
    const-string v3, "E5643"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_36
    const-string v3, "A1601"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    goto/16 :goto_0

    :sswitch_37
    const-string v3, "Aura_Note_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_38
    const-string v3, "MEIZU_M5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x47

    goto/16 :goto_0

    :sswitch_39
    const-string v3, "p212"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x50

    goto/16 :goto_0

    :sswitch_3a
    const-string v3, "mido"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x49

    goto/16 :goto_0

    :sswitch_3b
    const-string v3, "kate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x40

    goto/16 :goto_0

    :sswitch_3c
    const-string v3, "fugu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_3d
    const-string v3, "XE2X"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x7a

    goto/16 :goto_0

    :sswitch_3e
    const-string v3, "Q427"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x62

    goto/16 :goto_0

    :sswitch_3f
    const-string v3, "Q350"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x60

    goto/16 :goto_0

    :sswitch_40
    const-string v3, "P681"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x51

    goto/16 :goto_0

    :sswitch_41
    const-string v3, "1714"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    goto/16 :goto_0

    :sswitch_42
    const-string v3, "1713"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_43
    const-string v3, "1601"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_44
    const-string v3, "flo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_45
    const-string v3, "deb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_46
    const-string v3, "cv3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_47
    const-string v3, "cv1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_48
    const-string v3, "Z80"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x7d

    goto/16 :goto_0

    :sswitch_49
    const-string v3, "QX1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x66

    goto/16 :goto_0

    :sswitch_4a
    const-string v3, "PLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5e

    goto/16 :goto_0

    :sswitch_4b
    const-string v3, "P85"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x52

    goto/16 :goto_0

    :sswitch_4c
    const-string v3, "MX6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4a

    goto/16 :goto_0

    :sswitch_4d
    const-string v3, "M5c"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x44

    goto/16 :goto_0

    :sswitch_4e
    const-string v3, "JGZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3e

    goto/16 :goto_0

    :sswitch_4f
    const-string v3, "mh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x48

    goto/16 :goto_0

    :sswitch_50
    const-string v3, "V5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x73

    goto/16 :goto_0

    :sswitch_51
    const-string v3, "V1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x71

    goto/16 :goto_0

    :sswitch_52
    const-string v3, "Q5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x64

    goto/16 :goto_0

    :sswitch_53
    const-string v3, "C1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_54
    const-string v3, "woods_fn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x78

    goto/16 :goto_0

    :sswitch_55
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_56
    const-string v3, "Z12_PRO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x7c

    goto/16 :goto_0

    :sswitch_57
    const-string v3, "BLACK-1X"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_58
    const-string v3, "taido_row"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6b

    goto/16 :goto_0

    :sswitch_59
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5c

    goto/16 :goto_0

    :sswitch_5a
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_5b
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_5c
    const-string v3, "OnePlus5T"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4f

    goto/16 :goto_0

    :sswitch_5d
    const-string v3, "whyred"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x76

    goto/16 :goto_0

    :sswitch_5e
    const-string v3, "watson"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x75

    goto/16 :goto_0

    :sswitch_5f
    const-string v3, "SVP-DTV15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x69

    goto/16 :goto_0

    :sswitch_60
    const-string v3, "A7000-a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_61
    const-string v3, "nicklaus_f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4c

    goto/16 :goto_0

    :sswitch_62
    const-string v3, "tcl_eu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x70

    goto/16 :goto_0

    :sswitch_63
    const-string v3, "ELUGA_Ray_X"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_64
    const-string v3, "s905x018"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x6a

    goto/16 :goto_0

    :sswitch_65
    const-string v3, "A10-70L"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    goto/16 :goto_0

    :sswitch_66
    const-string v3, "A10-70F"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    goto/16 :goto_0

    :sswitch_67
    const-string v3, "namath"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4b

    goto/16 :goto_0

    :sswitch_68
    const-string v3, "Slate_Pro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x68

    goto/16 :goto_0

    :sswitch_69
    const-string v3, "iris60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_6a
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_6b
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_6c
    const-string v3, "panell_dt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x56

    goto/16 :goto_0

    :sswitch_6d
    const-string v3, "panell_ds"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x55

    goto/16 :goto_0

    :sswitch_6e
    const-string v3, "panell_dl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x54

    goto/16 :goto_0

    :sswitch_6f
    const-string v3, "vernee_M5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x74

    goto/16 :goto_0

    :sswitch_70
    const-string v3, "Phantom6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5b

    goto/16 :goto_0

    :sswitch_71
    const-string v3, "ComioS1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_72
    const-string v3, "XT1663"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x7b

    goto/16 :goto_0

    :sswitch_73
    const-string v3, "AquaPowerM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_74
    const-string v3, "PGN611"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x5a

    goto :goto_0

    :sswitch_75
    const-string v3, "PGN610"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x59

    goto :goto_0

    :sswitch_76
    const-string v3, "PGN528"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x58

    goto :goto_0

    :sswitch_77
    const-string v3, "NX573J"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4e

    goto :goto_0

    :sswitch_78
    const-string v3, "NX541J"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x4d

    goto :goto_0

    :sswitch_79
    const-string v3, "CP8676_I02"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x13

    goto :goto_0

    :sswitch_7a
    const-string v3, "K50a40"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x3f

    goto :goto_0

    :sswitch_7b
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2d

    goto :goto_0

    :sswitch_7c
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2c

    goto :goto_0

    :sswitch_7d
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v3, 0x2b

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 20
    :pswitch_0
    sput-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/acs;->f:Z

    .line 19
    :goto_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x236fe21d

    if-eq v3, v4, :cond_7

    const v4, 0x1e9d52

    if-eq v3, v4, :cond_6

    const v0, 0x1e9d5f

    if-eq v3, v0, :cond_5

    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    const-string v0, "AFTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "AFTA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_7
    const-string v0, "JSN-L21"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_2
    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v5, :cond_8

    goto :goto_3

    :cond_8
    sput-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/acs;->f:Z

    .line 17
    :cond_9
    :goto_3
    sput-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/acs;->e:Z

    .line 21
    :cond_a
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->f:Z

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_7d
        -0x7fd6c381 -> :sswitch_7c
        -0x7fd6c368 -> :sswitch_7b
        -0x7d026749 -> :sswitch_7a
        -0x78929d6a -> :sswitch_79
        -0x75f50a1e -> :sswitch_78
        -0x75f4fe9d -> :sswitch_77
        -0x736f875c -> :sswitch_76
        -0x736f83c2 -> :sswitch_75
        -0x736f83c1 -> :sswitch_74
        -0x7327ce1c -> :sswitch_73
        -0x651ebb62 -> :sswitch_72
        -0x6423293b -> :sswitch_71
        -0x604f5117 -> :sswitch_70
        -0x5ca40cc4 -> :sswitch_6f
        -0x58520ec1 -> :sswitch_6e
        -0x58520eba -> :sswitch_6d
        -0x58520eb9 -> :sswitch_6c
        -0x4eaed329 -> :sswitch_6b
        -0x4892fb4f -> :sswitch_6a
        -0x465b3df3 -> :sswitch_69
        -0x43e6c939 -> :sswitch_68
        -0x3ec0fcc5 -> :sswitch_67
        -0x3b33cca0 -> :sswitch_66
        -0x3b33cc9a -> :sswitch_65
        -0x398ae3f6 -> :sswitch_64
        -0x391f0fb4 -> :sswitch_63
        -0x346837ae -> :sswitch_62
        -0x323788e3 -> :sswitch_61
        -0x30f57652 -> :sswitch_60
        -0x2f88a116 -> :sswitch_5f
        -0x2f61ed98 -> :sswitch_5e
        -0x2efd0837 -> :sswitch_5d
        -0x2e9e9441 -> :sswitch_5c
        -0x2247b8b1 -> :sswitch_5b
        -0x1f0fa2b7 -> :sswitch_5a
        -0x19af3b41 -> :sswitch_59
        -0x114fad3e -> :sswitch_58
        -0x10dae90b -> :sswitch_57
        -0x1084b7b7 -> :sswitch_56
        -0xa5988e9 -> :sswitch_55
        -0x35f9fbf -> :sswitch_54
        0x84e -> :sswitch_53
        0xa04 -> :sswitch_52
        0xa9b -> :sswitch_51
        0xa9f -> :sswitch_50
        0xd9b -> :sswitch_4f
        0x11ebd -> :sswitch_4e
        0x127db -> :sswitch_4d
        0x12beb -> :sswitch_4c
        0x1334d -> :sswitch_4b
        0x135c9 -> :sswitch_4a
        0x13aea -> :sswitch_49
        0x158d2 -> :sswitch_48
        0x1821e -> :sswitch_47
        0x18220 -> :sswitch_46
        0x18401 -> :sswitch_45
        0x18c69 -> :sswitch_44
        0x1716e6 -> :sswitch_43
        0x171ac8 -> :sswitch_42
        0x171ac9 -> :sswitch_41
        0x252f5f -> :sswitch_40
        0x25981d -> :sswitch_3f
        0x259b88 -> :sswitch_3e
        0x290a13 -> :sswitch_3d
        0x3021fd -> :sswitch_3c
        0x321e47 -> :sswitch_3b
        0x332327 -> :sswitch_3a
        0x33ab63 -> :sswitch_39
        0x27691fb -> :sswitch_38
        0x349f581 -> :sswitch_37
        0x3ab0ea7 -> :sswitch_36
        0x3e53ea5 -> :sswitch_35
        0x3f25a44 -> :sswitch_34
        0x3f25a46 -> :sswitch_33
        0x3f25a49 -> :sswitch_32
        0x3f25e05 -> :sswitch_31
        0x3f25e07 -> :sswitch_30
        0x3f25e09 -> :sswitch_2f
        0x3f261c6 -> :sswitch_2e
        0x48dce49 -> :sswitch_2d
        0x48dd589 -> :sswitch_2c
        0x48dd8af -> :sswitch_2b
        0x4d36832 -> :sswitch_2a
        0x4f0b0e7 -> :sswitch_29
        0x5e2479e -> :sswitch_28
        0x60acc05 -> :sswitch_27
        0x6214744 -> :sswitch_26
        0x9d91379 -> :sswitch_25
        0xadc0551 -> :sswitch_24
        0xea056b3 -> :sswitch_23
        0x1121dbc3 -> :sswitch_22
        0x1255818c -> :sswitch_21
        0x1263990d -> :sswitch_20
        0x12d90f3a -> :sswitch_1f
        0x12d90f4c -> :sswitch_1e
        0x12d98b1b -> :sswitch_1d
        0x12d98b22 -> :sswitch_1c
        0x1844c711 -> :sswitch_1b
        0x1e3e8044 -> :sswitch_1a
        0x2f5336ed -> :sswitch_19
        0x2f54115e -> :sswitch_18
        0x2f541849 -> :sswitch_17
        0x31cf010e -> :sswitch_16
        0x36ad82f4 -> :sswitch_15
        0x391a0b61 -> :sswitch_14
        0x3f3728cd -> :sswitch_13
        0x448ec687 -> :sswitch_12
        0x46260f63 -> :sswitch_11
        0x4c505106 -> :sswitch_10
        0x4de67084 -> :sswitch_f
        0x506ac5a9 -> :sswitch_e
        0x5abad9cd -> :sswitch_d
        0x64d2e6e9 -> :sswitch_c
        0x65e4085b -> :sswitch_b
        0x6f373556 -> :sswitch_a
        0x719f1dcb -> :sswitch_9
        0x75d9a0f0 -> :sswitch_8
        0x7796d144 -> :sswitch_7
        0x78fc0e50 -> :sswitch_6
        0x790521fb -> :sswitch_5
        0x7933207f -> :sswitch_4
        0x7a05a409 -> :sswitch_3
        0x7a0696bd -> :sswitch_2
        0x7a16dfe7 -> :sswitch_1
        0x7a1f0e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z
    .locals 4

    .line 273
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    .line 274
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->g:Landroid/content/Context;

    .line 275
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/acn;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method private static g(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final A()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->w:Z

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->u:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->u:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(Landroid/view/Surface;)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->s:Z

    :cond_0
    return-void
.end method

.method protected final B()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->U()V

    return-void
.end method

.method protected final E()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-eqz v0, :cond_0

    .line 97
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final M()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->M()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    return-void
.end method

.method protected final a(F[Lcom/google/ads/interactivemedia/v3/internal/cz;)F
    .locals 6

    .line 98
    array-length v0, p2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 99
    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_0

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v3, v1

    if-nez p2, :cond_2

    return v1

    :cond_2
    mul-float v3, v3, p1

    return v3
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 3

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->m:Lcom/google/ads/interactivemedia/v3/internal/acq;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/acq;->a:I

    if-gt v0, v2, :cond_1

    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/acq;->b:I

    if-gt v0, v1, :cond_1

    .line 10
    invoke-static {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->m:Lcom/google/ads/interactivemedia/v3/internal/acq;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/acq;->c:I

    if-gt p1, v0, :cond_1

    .line 11
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    .line 280
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abm;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 282
    :cond_0
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 284
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    invoke-static {p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;ZZ)Ljava/util/List;

    move-result-object v3

    .line 286
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 287
    :cond_3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->c(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(I)I

    move-result p1

    return p1

    .line 288
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 289
    invoke-virtual {v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v4

    .line 290
    invoke-virtual {v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    const/16 v3, 0x10

    :goto_1
    if-eqz v4, :cond_6

    .line 291
    invoke-static {p1, p2, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;ZZ)Ljava/util/List;

    move-result-object p1

    .line 292
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 294
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oa;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    :cond_6
    if-eq v2, v4, :cond_7

    const/4 p1, 0x3

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v1

    return p1
.end method

.method protected final a(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/internal/oa;)Lcom/google/ads/interactivemedia/v3/internal/nz;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/acp;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    .line 90
    invoke-direct {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/acp;-><init>(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/internal/oa;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/oe;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    .line 101
    invoke-static {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 133
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->I()Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->g:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    .line 135
    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/acn;->a(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/acn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    .line 133
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-eq p1, p2, :cond_5

    .line 136
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->S()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->s:Z

    .line 137
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Z)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->n:Z

    if-nez v1, :cond_2

    .line 141
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    .line 140
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eq p2, v0, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->X()V

    .line 145
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->U()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 146
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->T()V

    return-void

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->V()V

    .line 143
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->U()V

    return-void

    :cond_5
    if-eqz p2, :cond_8

    .line 140
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 147
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->X()V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->s:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    .line 148
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(Landroid/view/Surface;)V

    return-void

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 149
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->t:I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_8

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->t:I

    .line 150
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 151
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/act;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->R:Lcom/google/ads/interactivemedia/v3/internal/act;

    :cond_8
    return-void
.end method

.method protected final a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(JZ)V

    .line 198
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->U()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->x:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->B:I

    if-eqz p3, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->T()V

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;I)V
    .locals 3

    .line 251
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->W()V

    const-string v0, "releaseOutputBuffer"

    .line 252
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 254
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->D:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 256
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->B:I

    .line 257
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->A()V

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;IJ)V
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->W()V

    const-string v0, "releaseOutputBuffer"

    .line 259
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 261
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->D:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 263
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->B:I

    .line 264
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->A()V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaFormat;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->t:I

    .line 179
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 180
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    .line 181
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    goto :goto_3

    .line 182
    :cond_1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 183
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "width"

    .line 188
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 187
    :goto_1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    if-eqz v2, :cond_4

    .line 189
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v6

    goto :goto_2

    :cond_4
    const-string v0, "height"

    .line 190
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 189
    :goto_2
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    .line 191
    :goto_3
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->u:F

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    .line 192
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_6

    .line 193
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_5

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_7

    :cond_5
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->G:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->H:I

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->J:F

    goto :goto_4

    .line 194
    :cond_6
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->I:I

    .line 195
    :cond_7
    :goto_4
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->K:F

    .line 196
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Z)V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/da;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 177
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/da;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    .line 178
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    .line 207
    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-eqz v0, :cond_1

    .line 208
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->e(J)V

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/ny;Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaCrypto;F)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    .line 22
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/oa;->c:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->u()[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    .line 24
    iget v6, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    .line 25
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    .line 26
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v8

    .line 27
    array-length v9, v5

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v9, v12, :cond_1

    if-eq v8, v10, :cond_0

    .line 54
    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget v9, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    iget v13, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    .line 55
    invoke-static {v1, v5, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v10, :cond_0

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 56
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_0
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/acq;

    .line 57
    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/acq;-><init>(III)V

    move-object/from16 v17, v4

    goto/16 :goto_b

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v9, :cond_5

    .line 28
    aget-object v15, v5, v13

    .line 29
    invoke-virtual {v1, v2, v15, v11}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 30
    iget v12, v15, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-eq v12, v10, :cond_3

    iget v11, v15, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-ne v11, v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v11, 0x1

    :goto_2
    or-int/2addr v14, v11

    .line 31
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 32
    iget v11, v15, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 33
    invoke-static {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    if-eqz v14, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x42

    .line 34
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "MediaCodecVideoRenderer"

    .line 35
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    iget v11, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-le v5, v11, :cond_6

    move v12, v5

    goto :goto_3

    :cond_6
    move v12, v11

    :goto_3
    if-gt v5, v11, :cond_7

    move v13, v5

    goto :goto_4

    :cond_7
    move v13, v11

    :goto_4
    int-to-float v14, v13

    int-to-float v15, v12

    div-float/2addr v14, v15

    sget-object v15, Lcom/google/ads/interactivemedia/v3/internal/acs;->c:[I

    .line 37
    array-length v3, v15

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :goto_5
    const/16 v18, 0x0

    if-ge v4, v3, :cond_f

    move/from16 v19, v3

    aget v3, v15, v4

    move-object/from16 v20, v15

    int-to-float v15, v3

    mul-float v15, v15, v14

    float-to-int v15, v15

    if-le v3, v12, :cond_f

    if-gt v15, v13, :cond_8

    goto/16 :goto_8

    :cond_8
    move/from16 v21, v12

    .line 38
    sget v12, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move/from16 v22, v13

    const/16 v13, 0x15

    if-lt v12, v13, :cond_b

    if-gt v5, v11, :cond_9

    move v12, v3

    goto :goto_6

    :cond_9
    move v12, v15

    :goto_6
    if-gt v5, v11, :cond_a

    move v3, v15

    .line 39
    :cond_a
    invoke-virtual {v1, v12, v3}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(II)Landroid/graphics/Point;

    move-result-object v3

    .line 40
    iget v12, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    .line 41
    iget v13, v3, Landroid/graphics/Point;->x:I

    iget v15, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    float-to-double v9, v12

    invoke-virtual {v1, v13, v15, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a(IID)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_9

    :cond_b
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/16 v9, 0x10

    .line 42
    :try_start_0
    invoke-static {v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 43
    invoke-static {v15, v9}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(II)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    mul-int v9, v3, v10

    .line 44
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/op;->b()I

    move-result v12

    if-gt v9, v12, :cond_e

    new-instance v4, Landroid/graphics/Point;

    if-gt v5, v11, :cond_c

    move v9, v3

    goto :goto_7

    :cond_c
    move v9, v10

    :goto_7
    if-gt v5, v11, :cond_d

    move v3, v10

    .line 45
    :cond_d
    invoke-direct {v4, v9, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/ok; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_9

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v19

    move-object/from16 v15, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto :goto_5

    :cond_f
    :goto_8
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    :catch_0
    move-object/from16 v3, v18

    :goto_9
    if-eqz v3, :cond_11

    .line 46
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 47
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 48
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 49
    invoke-static {v1, v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Ljava/lang/String;II)I

    move-result v3

    .line 50
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Codec max resolution adjusted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v24

    .line 52
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move-object/from16 v17, v4

    :cond_11
    :goto_a
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/acq;

    .line 53
    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/acq;-><init>(III)V

    .line 57
    :goto_b
    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->m:Lcom/google/ads/interactivemedia/v3/internal/acq;

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->l:Z

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->Q:I

    .line 58
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    move-object/from16 v8, v17

    .line 59
    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    const-string v8, "width"

    invoke-virtual {v6, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    const-string v8, "height"

    invoke-virtual {v6, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 63
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_12

    const-string v9, "frame-rate"

    .line 64
    invoke-virtual {v6, v9, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 65
    :cond_12
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->t:I

    const-string v9, "rotation-degrees"

    invoke-static {v6, v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 66
    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->x:Lcom/google/ads/interactivemedia/v3/internal/ack;

    if-eqz v7, :cond_13

    iget v9, v7, Lcom/google/ads/interactivemedia/v3/internal/ack;->c:I

    const-string v10, "color-transfer"

    .line 67
    invoke-static {v6, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v9, v7, Lcom/google/ads/interactivemedia/v3/internal/ack;->a:I

    const-string v10, "color-standard"

    .line 68
    invoke-static {v6, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v9, v7, Lcom/google/ads/interactivemedia/v3/internal/ack;->b:I

    const-string v10, "color-range"

    .line 69
    invoke-static {v6, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/ack;->d:[B

    if-eqz v7, :cond_13

    .line 70
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v9, "hdr-static-info"

    invoke-virtual {v6, v9, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 71
    :cond_13
    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 72
    invoke-static/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/op;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 73
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v7, "profile"

    .line 73
    invoke-static {v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 75
    :cond_14
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/internal/acq;->a:I

    const-string v7, "max-width"

    invoke-virtual {v6, v7, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 76
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/internal/acq;->b:I

    const-string v7, "max-height"

    invoke-virtual {v6, v7, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 77
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/internal/acq;->c:I

    const-string v5, "max-input-size"

    invoke-static {v6, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 78
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_15

    const-string v2, "priority"

    const/4 v7, 0x0

    .line 79
    invoke-virtual {v6, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v2, p5

    cmpl-float v7, v2, v8

    if-eqz v7, :cond_15

    const-string v7, "operating-rate"

    .line 80
    invoke-virtual {v6, v7, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_15
    if-eqz v3, :cond_16

    const-string v2, "no-post-process"

    const/4 v3, 0x1

    .line 81
    invoke-virtual {v6, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "auto-frc"

    const/4 v7, 0x0

    .line 82
    invoke-virtual {v6, v2, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_c

    :cond_16
    const/4 v3, 0x1

    :goto_c
    if-eqz v4, :cond_17

    const-string v2, "tunneled-playback"

    .line 83
    invoke-virtual {v6, v2, v3}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v2, "audio-session-id"

    .line 84
    invoke-virtual {v6, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_17
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-nez v2, :cond_1a

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 86
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->g:Landroid/content/Context;

    .line 87
    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/acn;->a(Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/internal/acn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    :cond_18
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    goto :goto_d

    .line 85
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 86
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 87
    :cond_1a
    :goto_d
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 88
    invoke-interface {v2, v6, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt v1, v5, :cond_1b

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-eqz v1, :cond_1b

    .line 89
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/acr;

    invoke-interface/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/ny;->e()Landroid/media/MediaCodec;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/acr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/acs;Landroid/media/MediaCodec;)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->b:Lcom/google/ads/interactivemedia/v3/internal/acr;

    :cond_1b
    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(Ljava/lang/String;JJ)V

    .line 161
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->n:Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->I()Lcom/google/ads/interactivemedia/v3/internal/oa;

    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 p3, 0x0

    const/16 p4, 0x1d

    if-lt p2, p4, :cond_1

    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/oa;->b:Ljava/lang/String;

    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/oa;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    aget-object p5, p1, p4

    .line 165
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->o:Z

    return-void
.end method

.method protected final a(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 172
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(ZZ)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->Q:I

    .line 173
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->v()Lcom/google/ads/interactivemedia/v3/internal/ef;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->Q:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-eq v0, p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->h:Lcom/google/ads/interactivemedia/v3/internal/acw;

    .line 176
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/acw;->a()V

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->v:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->w:Z

    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    .line 218
    invoke-static/range {p5 .. p5}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->x:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->x:J

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->R()J

    move-result-wide v7

    sub-long v11, v5, v7

    const/4 v13, 0x1

    if-eqz p12, :cond_2

    if-eqz p13, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Landroid/media/MediaCodec;I)V

    return v13

    :cond_2
    :goto_0
    sub-long v14, v5, v1

    .line 218
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    const/4 v13, 0x0

    if-ne v9, v10, :cond_4

    invoke-static {v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/acs;->g(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Landroid/media/MediaCodec;I)V

    .line 220
    invoke-virtual {v0, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/acs;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v13

    .line 221
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v16, 0x3e8

    mul-long v9, v9, v16

    move-wide/from16 v18, v14

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->D:J

    sub-long v13, v9, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result v15

    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->w:Z

    const/4 v6, 0x2

    if-nez v5, :cond_5

    if-eq v15, v6, :cond_6

    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->v:Z

    if-eqz v5, :cond_7

    goto :goto_1

    .line 242
    :cond_5
    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->u:Z

    if-nez v5, :cond_7

    :cond_6
    :goto_1
    move-wide/from16 v20, v7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v20, v7

    const/4 v5, 0x0

    .line 221
    :goto_2
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    const/16 v8, 0x15

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v24, v6, v22

    if-nez v24, :cond_a

    cmp-long v6, v1, v20

    if-ltz v6, :cond_a

    if-nez v5, :cond_8

    const/4 v5, 0x2

    if-ne v15, v5, :cond_a

    invoke-static/range {v18 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/acs;->g(J)Z

    move-result v6

    if-eqz v6, :cond_a

    const-wide/32 v6, 0x186a0

    cmp-long v20, v13, v6

    if-lez v20, :cond_a

    .line 244
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v1

    move-object/from16 p13, p14

    .line 245
    invoke-direct/range {p8 .. p13}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(JJLcom/google/ads/interactivemedia/v3/internal/cz;)V

    .line 246
    sget v5, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt v5, v8, :cond_9

    .line 247
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/media/MediaCodec;IJ)V

    goto :goto_3

    .line 248
    :cond_9
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/media/MediaCodec;I)V

    :goto_3
    move-wide/from16 v6, v18

    .line 249
    invoke-virtual {v0, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/acs;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_a
    move-wide/from16 v6, v18

    const/4 v5, 0x2

    if-ne v15, v5, :cond_14

    .line 248
    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->x:J

    cmp-long v5, v1, v13

    if-nez v5, :cond_b

    goto/16 :goto_8

    .line 222
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->h:Lcom/google/ads/interactivemedia/v3/internal/acw;

    sub-long v9, v9, p3

    sub-long/2addr v6, v9

    mul-long v6, v6, v16

    add-long/2addr v6, v13

    move-wide/from16 v9, p10

    .line 223
    invoke-virtual {v5, v9, v10, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/acw;->a(JJ)J

    move-result-wide v5

    sub-long v9, v5, v13

    div-long v9, v9, v16

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    const-wide/32 v18, -0x7a120

    cmp-long v7, v9, v18

    if-gez v7, :cond_e

    if-nez p13, :cond_e

    .line 224
    invoke-virtual/range {p0 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/bj;->b(J)I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    .line 233
    :cond_c
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 240
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->i:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->i:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    add-int/2addr v3, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v13, v4

    if-eqz v1, :cond_d

    .line 241
    iget v1, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    goto :goto_4

    .line 242
    :cond_d
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(I)V

    .line 243
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->K()Z

    const/4 v1, 0x0

    return v1

    .line 224
    :cond_e
    :goto_5
    invoke-static {v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/acs;->g(J)Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez p13, :cond_10

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v13, v1

    if-eqz v5, :cond_f

    .line 238
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Landroid/media/MediaCodec;I)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_f
    const-string v1, "dropVideoBuffer"

    .line 234
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 236
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(I)V

    .line 239
    :goto_6
    invoke-virtual {v0, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/acs;->f(J)V

    return v1

    .line 225
    :cond_10
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt v1, v8, :cond_11

    const-wide/32 v1, 0xc350

    cmp-long v7, v9, v1

    if-gez v7, :cond_13

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v5

    move-object/from16 p13, p14

    .line 226
    invoke-direct/range {p8 .. p13}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(JJLcom/google/ads/interactivemedia/v3/internal/cz;)V

    .line 227
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/media/MediaCodec;IJ)V

    .line 228
    invoke-virtual {v0, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/acs;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_11
    const-wide/16 v1, 0x7530

    cmp-long v7, v9, v1

    if-gez v7, :cond_13

    const-wide/16 v1, 0x2af8

    cmp-long v7, v9, v1

    if-lez v7, :cond_12

    const-wide/16 v1, -0x2710

    add-long/2addr v1, v9

    :try_start_0
    div-long v1, v1, v16

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 230
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    :cond_12
    :goto_7
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v5

    move-object/from16 p13, p14

    .line 231
    invoke-direct/range {p8 .. p13}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(JJLcom/google/ads/interactivemedia/v3/internal/cz;)V

    .line 232
    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Landroid/media/MediaCodec;I)V

    .line 233
    invoke-virtual {v0, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/acs;->f(J)V

    const/4 v1, 0x1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1

    :cond_14
    :goto_8
    const/4 v1, 0x0

    return v1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 272
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->b(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 296
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->g:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->B:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->B:I

    .line 297
    iget p1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->h:I

    .line 298
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->h:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->Y()V

    :cond_0
    return-void
.end method

.method protected final b(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    .line 276
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 278
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 279
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/hc;->f:I

    return-void
.end method

.method protected final b(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 126
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 128
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    .line 130
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 131
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 132
    invoke-virtual {p1, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final c(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 267
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->c(F)V

    const/4 p1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Z)V

    return-void
.end method

.method protected final d(J)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->d(J)V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->C:I

    :cond_0
    return-void
.end method

.method protected final e(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->c(J)V

    .line 203
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->W()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 204
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->e:I

    .line 205
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->A()V

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->d(J)V

    return-void
.end method

.method protected final f(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->j:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->j:J

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->k:I

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->E:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->E:J

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->F:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->F:I

    return-void
.end method

.method protected final p()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->A:I

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->z:J

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->D:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->E:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->F:I

    .line 214
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->a(Z)V

    return-void
.end method

.method protected final q()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    .line 215
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->Y()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->F:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->E:J

    .line 216
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/adg;->a(JI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->E:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->F:I

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->S()V

    return-void
.end method

.method protected final r()V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->V()V

    .line 167
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acs;->U()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->s:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->h:Lcom/google/ads/interactivemedia/v3/internal/acw;

    .line 168
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acw;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->b:Lcom/google/ads/interactivemedia/v3/internal/acr;

    .line 169
    :try_start_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/adg;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void

    :catchall_0
    move-exception v0

    .line 169
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->i:Lcom/google/ads/interactivemedia/v3/internal/adg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adg;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    .line 171
    throw v0
.end method

.method protected final s()V
    .locals 4

    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    .line 210
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    :cond_2
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    .line 211
    :cond_3
    throw v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 9

    .line 152
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->y()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->r:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->p:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->H()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->P:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    return v1

    .line 152
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 153
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acs;->y:J

    return v0
.end method
