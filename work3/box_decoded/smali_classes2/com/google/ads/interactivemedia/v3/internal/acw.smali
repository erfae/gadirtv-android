.class public final Lcom/google/ads/interactivemedia/v3/internal/acw;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/acv;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/acu;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/acw;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_3

    .line 4
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    const-string v1, "display"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/acu;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/acw;Landroid/hardware/display/DisplayManager;)V

    .line 5
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->c:Lcom/google/ads/interactivemedia/v3/internal/acu;

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/acv;->a()Lcom/google/ads/interactivemedia/v3/internal/acv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->b:Lcom/google/ads/interactivemedia/v3/internal/acv;

    goto :goto_2

    .line 6
    :cond_3
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->c:Lcom/google/ads/interactivemedia/v3/internal/acu;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->b:Lcom/google/ads/interactivemedia/v3/internal/acv;

    :goto_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->d:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->e:J

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/acw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acw;->c()V

    return-void
.end method

.method private final b(JJ)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->k:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->j:J

    sub-long/2addr p3, v2

    sub-long/2addr p1, v0

    sub-long/2addr p3, p1

    .line 17
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final c()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    .line 18
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    .line 19
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v3, v0

    div-double/2addr v1, v3

    double-to-long v0, v1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->d:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->e:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JJ)J
    .locals 10

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->f:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->l:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->h:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->g:J

    :cond_0
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->l:J

    const-wide/16 v4, 0x6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->k:J

    sub-long v4, v0, v4

    .line 8
    div-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->g:J

    add-long/2addr v2, v4

    .line 9
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/acw;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->j:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->k:J

    sub-long/2addr v4, v6

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/acw;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    :cond_3
    :goto_0
    move-wide v4, p3

    move-wide v2, v0

    .line 9
    :goto_1
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    if-nez v6, :cond_4

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->k:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->j:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->l:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    :cond_4
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->f:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->h:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->b:Lcom/google/ads/interactivemedia/v3/internal/acv;

    if-eqz p1, :cond_9

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, v0

    if-nez p4, :cond_5

    goto :goto_4

    :cond_5
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/acv;->a:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_6

    return-wide v4

    :cond_6
    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->d:J

    sub-long v0, v4, p1

    .line 11
    div-long/2addr v0, p3

    mul-long v0, v0, p3

    add-long/2addr p1, v0

    cmp-long v0, v4, p1

    if-gtz v0, :cond_7

    sub-long p3, p1, p3

    goto :goto_2

    :cond_7
    add-long/2addr p3, p1

    move-wide v8, p1

    move-wide p1, p3

    move-wide p3, v8

    :goto_2
    sub-long v0, p1, v4

    sub-long/2addr v4, p3

    cmp-long v2, v0, v4

    if-gez v2, :cond_8

    goto :goto_3

    :cond_8
    move-wide p1, p3

    :goto_3
    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->e:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_9
    :goto_4
    return-wide v4
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->i:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->b:Lcom/google/ads/interactivemedia/v3/internal/acv;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acv;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->c:Lcom/google/ads/interactivemedia/v3/internal/acu;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acu;->a()V

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/acw;->c()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->c:Lcom/google/ads/interactivemedia/v3/internal/acu;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acu;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acw;->b:Lcom/google/ads/interactivemedia/v3/internal/acv;

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acv;->c()V

    :cond_1
    return-void
.end method
