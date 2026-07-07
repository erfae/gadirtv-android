.class public final Lcom/google/android/gms/internal/ads/zzbbl;
.super Lcom/google/android/gms/internal/ads/zzbap;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zzbck;


# instance fields
.field private zzblj:Landroid/view/Surface;

.field private final zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

.field private final zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzehk:Z

.field private zzehp:I

.field private zzehq:I

.field private zzehs:I

.field private zzeht:I

.field private zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

.field private final zzehv:Z

.field private zzehx:Lcom/google/android/gms/internal/ads/zzbam;

.field private zzeiw:[Ljava/lang/String;

.field private final zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

.field private zzelu:Lcom/google/android/gms/internal/ads/zzbca;

.field private zzelv:Ljava/lang/String;

.field private zzelw:Z

.field private zzelx:I

.field private zzely:Z

.field private zzelz:Z

.field private zzema:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbe;ZZLcom/google/android/gms/internal/ads/zzbbf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbap;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehk:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehv:Z

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 8
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbbl;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 9
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzb(Lcom/google/android/gms/internal/ads/zzbap;)V

    return-void
.end method

.method private final zza(FZ)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbca;->zzb(FZ)V

    return-void

    :cond_0
    const-string p1, "Trying to set volume before player is initalized."

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/Surface;Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbca;->zza(Landroid/view/Surface;Z)V

    return-void

    :cond_0
    const-string p1, "Trying to set surface before player is initalized."

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void
.end method

.method private final zzaaw()Lcom/google/android/gms/internal/ads/zzbca;
    .locals 4

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbe;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbca;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbf;Lcom/google/android/gms/internal/ads/zzbbe;)V

    return-object v0
.end method

.method private final zzaax()Ljava/lang/String;
    .locals 3

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbe;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zzaao()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzm;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzaay()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelw:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaaz()Z
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaba()V
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelv:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzblj:Landroid/view/Surface;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "cache:"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelv:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbe;->zzff(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcx;

    move-result-object v0

    .line 23
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v2, :cond_2

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdi;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzabu()Lcom/google/android/gms/internal/ads/zzbca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Precached video player has been released."

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_2
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzbdj;

    if-eqz v2, :cond_4

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdj;

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaax()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzabv()Z

    move-result v4

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Stream cache URL is null."

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaw()Lcom/google/android/gms/internal/ads/zzbca;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/net/Uri;

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbca;->zza([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_2

    :cond_4
    const-string v0, "Stream cache miss: "

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelv:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaw()Lcom/google/android/gms/internal/ads/zzbca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaax()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeiw:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    .line 46
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeiw:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    .line 47
    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzbca;->zza([Landroid/net/Uri;Ljava/lang/String;)V

    .line 50
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbca;->zza(Lcom/google/android/gms/internal/ads/zzbck;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzblj:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Landroid/view/Surface;Z)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->getPlaybackState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabb()V

    :cond_9
    :goto_3
    return-void
.end method

.method private final zzabb()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzely:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzely:Z

    .line 70
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzzq()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzfb()V

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelz:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->play()V

    :cond_1
    return-void
.end method

.method private final zzabc()V
    .locals 2

    .line 275
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehq:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zzo(II)V

    return-void
.end method

.method private final zzabd()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbca;->zzav(Z)V

    :cond_0
    return-void
.end method

.method private final zzabe()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbca;->zzav(Z)V

    :cond_0
    return-void
.end method

.method private final zzo(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 278
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzema:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 279
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzema:F

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzem()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehq:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehp:I

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 10

    .line 171
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbap;->onMeasure(II)V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->getMeasuredWidth()I

    move-result p1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->getMeasuredHeight()I

    move-result p2

    .line 174
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzema:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    int-to-float p1, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 180
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbl;->setMeasuredDimension(II)V

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbc;->zzm(II)V

    .line 183
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    .line 184
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehs:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeht:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    .line 186
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehk:Z

    if-eqz v0, :cond_8

    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzem()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzek()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 191
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(FZ)V

    .line 192
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzhd;->zzf(Z)V

    .line 193
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzem()J

    move-result-wide v1

    .line 194
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 195
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaay()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzem()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_7

    .line 196
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa

    cmp-long v9, v5, v7

    if-lez v9, :cond_6

    :cond_7
    const/4 v1, 0x0

    .line 198
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzf(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->zzzq()V

    .line 200
    :cond_8
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehs:I

    .line 201
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeht:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehv:Z

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 205
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbc;->zza(Landroid/graphics/SurfaceTexture;II)V

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->start()V

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzaae()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzaad()V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 213
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 214
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzblj:Landroid/view/Surface;

    .line 215
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-nez p1, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaba()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Landroid/view/Surface;Z)V

    .line 218
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbbf;->zzekr:Z

    if-nez p1, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabd()V

    .line 220
    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehp:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehq:I

    if-nez p1, :cond_4

    goto :goto_2

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabc()V

    goto :goto_3

    .line 221
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbl;->zzo(II)V

    .line 223
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbap;->pause()V

    .line 233
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbc;->zzaad()V

    .line 235
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabe()V

    .line 238
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzblj:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 240
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzblj:Landroid/view/Surface;

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Landroid/view/Surface;Z)V

    .line 242
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbt;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 225
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbc;->zzm(II)V

    .line 227
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzc(Lcom/google/android/gms/internal/ads/zzbap;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeih:Lcom/google/android/gms/internal/ads/zzbaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbaz;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzbam;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbs;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    .line 246
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekr:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabe()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzf(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzaau()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbj;->zzaau()V

    .line 124
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final play()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaz()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekr:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabd()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzf(Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzaat()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbj;->zzaat()V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeih:Lcom/google/android/gms/internal/ads/zzbaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbaz;->zzzs()V

    .line 98
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbp;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 99
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelz:Z

    return-void
.end method

.method public final seekTo(I)V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaaz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhd;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelv:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeiw:[Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaba()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabp()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->stop()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Landroid/view/Surface;Z)V

    .line 106
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbca;->zza(Lcom/google/android/gms/internal/ads/zzbck;)V

    .line 108
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbca;->release()V

    .line 109
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    .line 110
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelw:Z

    .line 112
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzely:Z

    .line 113
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelz:Z

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzaau()V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbj;->zzaau()V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->onStop()V

    return-void
.end method

.method public final zza(FF)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehu:Lcom/google/android/gms/internal/ads/zzbbc;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbc;->zzb(FF)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbam;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ExoPlayerAdapter error: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfa(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 270
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelw:Z

    .line 271
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbbf;->zzekr:Z

    if-eqz p2, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabe()V

    .line 273
    :cond_1
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzabf()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzzu()V

    :cond_0
    return-void
.end method

.method final synthetic zzabg()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzzr()V

    :cond_0
    return-void
.end method

.method final synthetic zzabh()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->onPaused()V

    :cond_0
    return-void
.end method

.method final synthetic zzabi()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzzs()V

    :cond_0
    return-void
.end method

.method final synthetic zzabj()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzzt()V

    :cond_0
    return-void
.end method

.method final synthetic zzabk()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zzfb()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->setVideoPath(Ljava/lang/String;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelv:Ljava/lang/String;

    .line 88
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeiw:[Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzaba()V

    :cond_1
    return-void
.end method

.method public final zzb(ZJ)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazj;->zzegt:Lcom/google/android/gms/internal/ads/zzdzc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbv;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbv;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;ZJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzc;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final synthetic zzc(ZJ)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehi:Lcom/google/android/gms/internal/ads/zzbbe;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbe;->zza(ZJ)V

    return-void
.end method

.method public final zzdl(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabs()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzdt(I)V

    :cond_0
    return-void
.end method

.method public final zzdm(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabs()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzdu(I)V

    :cond_0
    return-void
.end method

.method public final zzdn(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabs()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzdn(I)V

    :cond_0
    return-void
.end method

.method public final zzdo(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabs()Lcom/google/android/gms/internal/ads/zzbcb;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzdo(I)V

    :cond_0
    return-void
.end method

.method public final zzdp(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbca;->zzdp(I)V

    :cond_0
    return-void
.end method

.method public final zzdr(I)V
    .locals 1

    .line 251
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    if-eq v0, p1, :cond_3

    .line 252
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelx:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbbf;->zzekr:Z

    if-eqz p1, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabe()V

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehj:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbh;->zzaau()V

    .line 260
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbj;->zzaau()V

    .line 261
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>(Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabb()V

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic zzds(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbam;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzfg(Ljava/lang/String;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    .line 308
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbam;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzn(II)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehp:I

    .line 264
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehq:I

    .line 265
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbl;->zzabc()V

    return-void
.end method

.method public final zzna()J
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzna()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method final synthetic zzp(II)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehx:Lcom/google/android/gms/internal/ads/zzbam;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbam;->zzk(II)V

    :cond_0
    return-void
.end method

.method public final zzzk()Ljava/lang/String;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzehv:Z

    if-eqz v0, :cond_0

    const-string v0, " spherical"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ExoPlayer/3"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzzo()J
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzzo()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzzp()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzelu:Lcom/google/android/gms/internal/ads/zzbca;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbca;->zzzp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzzq()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeii:Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbj;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(FZ)V

    return-void
.end method
