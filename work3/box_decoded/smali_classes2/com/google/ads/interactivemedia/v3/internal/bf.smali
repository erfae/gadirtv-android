.class final Lcom/google/ads/interactivemedia/v3/internal/bf;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/bd;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/be;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/fe;

.field private e:I

.field private f:I

.field private g:F

.field private h:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/be;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->g:F

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->c:Lcom/google/ads/interactivemedia/v3/internal/be;

    .line 3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bd;

    invoke-direct {p1, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/bd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bf;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->b:Lcom/google/ads/interactivemedia/v3/internal/bd;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->e:I

    return-void
.end method

.method private final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->g:F

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->c:Lcom/google/ads/interactivemedia/v3/internal/be;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ei;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 13
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->i(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/bf;I)V
    .locals 2

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->b(I)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->b(I)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->c()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->b(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    return-void
.end method

.method private final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->c:Lcom/google/ads/interactivemedia/v3/internal/be;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ei;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c()Z

    move-result v1

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(ZI)I

    move-result v2

    .line 9
    invoke-static {v0, v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;ZII)V

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->e:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Landroid/media/AudioManager;

    .line 6
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->b:Lcom/google/ads/interactivemedia/v3/internal/bd;

    .line 5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->g:F

    return v0
.end method

.method public final a(ZI)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->f:I

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_5

    .line 14
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->e:I

    if-ne p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 15
    :cond_1
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 p2, 0x1a

    const/4 v2, 0x0

    if-lt p1, p2, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->h:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->a:Landroid/media/AudioManager;

    .line 17
    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 18
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(I)V

    :goto_1
    return v0

    .line 20
    :cond_3
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->f:I

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 21
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 16
    :cond_4
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_5
    return v0

    .line 14
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->c()V

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/fe;)V
    .locals 1

    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->d:Lcom/google/ads/interactivemedia/v3/internal/fe;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->f:I

    const/4 p1, 0x1

    const-string v0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 12
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bf;->c:Lcom/google/ads/interactivemedia/v3/internal/be;

    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->c()V

    return-void
.end method
