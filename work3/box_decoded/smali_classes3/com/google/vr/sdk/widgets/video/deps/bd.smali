.class public Lcom/google/vr/sdk/widgets/video/deps/bd;
.super Lcom/google/vr/sdk/widgets/video/deps/gl;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/pa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bd$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/av;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Landroid/media/MediaFormat;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/an;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ba;

    move-object v0, p7

    move-object/from16 v1, p8

    invoke-direct {v7, p7, v1}, Lcom/google/vr/sdk/widgets/video/deps/ba;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/bd;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/av;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/av;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            "Lcom/google/vr/sdk/widgets/video/deps/av;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;-><init>(ILcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZF)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->a:Landroid/content/Context;

    .line 5
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    invoke-direct {p1, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bd$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/bd$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bd;Lcom/google/vr/sdk/widgets/video/deps/bd$1;)V

    invoke-interface {p7, p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Lcom/google/vr/sdk/widgets/video/deps/av$c;)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 2

    .line 194
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 196
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.software.leanback"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 203
    :cond_1
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bd;)Lcom/google/vr/sdk/widgets/video/deps/ao$a;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bd;Z)Z
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->n:Z

    return p1
.end method

.method private b()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 218
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->n:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->n:Z

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 223
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/ps;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/ps;->b:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;[Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 5

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    .line 187
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 189
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 190
    invoke-virtual {p1, p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gk;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    invoke-direct {p0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 204
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 205
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 207
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 208
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->i:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/go;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    .line 209
    invoke-static {v0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/go;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 210
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "priority"

    .line 211
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_0

    const-string p1, "operating-rate"

    .line 213
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(IJJ)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/pb;->h(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected canKeepCodec(Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 1

    .line 63
    invoke-direct {p0, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    if-gt p1, v0, :cond_0

    .line 64
    invoke-virtual {p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gk;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    if-nez p1, :cond_0

    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    if-nez p1, :cond_0

    iget p1, p4, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    if-nez p1, :cond_0

    iget p1, p4, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected configureCodec(Lcom/google/vr/sdk/widgets/video/deps/gk;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/l;Landroid/media/MediaCrypto;F)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getStreamFormats()[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Lcom/google/vr/sdk/widgets/video/deps/gk;Lcom/google/vr/sdk/widgets/video/deps/l;[Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    .line 52
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->f:Z

    .line 53
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->g:Z

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->e:Z

    .line 54
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "audio/raw"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gk;->b:Ljava/lang/String;

    .line 55
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->d:I

    .line 56
    invoke-virtual {p0, p3, p1, v0, p5}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p5, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2, p1, v0, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 58
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->e:Z

    if-eqz p2, :cond_1

    .line 59
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->g:Landroid/media/MediaFormat;

    .line 60
    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->g:Landroid/media/MediaFormat;

    :goto_1
    return-void
.end method

.method public d()J
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->b()V

    .line 146
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    return-wide v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->f()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    return-object v0
.end method

.method protected getCodecOperatingRate(FLcom/google/vr/sdk/widgets/video/deps/l;[Lcom/google/vr/sdk/widgets/video/deps/l;)F
    .locals 4

    .line 69
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 70
    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    if-eq v3, v0, :cond_0

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method protected getDecoderInfos(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation

    .line 44
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a()Lcom/google/vr/sdk/widgets/video/deps/gk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->getDecoderInfos(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/pa;
    .locals 0

    return-object p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/ay;

    .line 182
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Lcom/google/vr/sdk/widgets/video/deps/ay;)V

    goto :goto_0

    .line 178
    :cond_1
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 179
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Lcom/google/vr/sdk/widgets/video/deps/aj;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 129
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    return-void

    :catchall_0
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 132
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 135
    :try_start_2
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 137
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    .line 140
    throw v0

    :catchall_2
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a()V

    .line 140
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->b(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onEnabled(Z)V

    .line 107
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a(Lcom/google/vr/sdk/widgets/video/deps/bn;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getConfiguration()Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ab;->b:I

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->b(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->g()V

    :goto_0
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->b:Lcom/google/vr/sdk/widgets/video/deps/ao$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ao$a;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 79
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 80
    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->h:I

    .line 81
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->i:I

    .line 82
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->w:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->j:I

    .line 83
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->x:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->k:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->g:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    const-string p2, "mime"

    .line 86
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/pb;->h(Ljava/lang/String;)I

    move-result p1

    .line 87
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->g:Landroid/media/MediaFormat;

    goto :goto_0

    .line 88
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->h:I

    :goto_0
    move v1, p1

    const-string p1, "channel-count"

    .line 90
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string p1, "sample-rate"

    .line 91
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 92
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v2, p1, :cond_1

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->i:I

    if-ge p2, p1, :cond_1

    .line 93
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 94
    :goto_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->i:I

    if-ge p2, v0, :cond_2

    .line 95
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v5, p1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->j:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->k:I

    invoke-interface/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(IIII[III)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/av$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onPositionReset(JZ)V

    .line 114
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/av;->i()V

    .line 115
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->m:Z

    .line 117
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->n:Z

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/bo;)V
    .locals 5

    .line 149
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 151
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->l:J

    :cond_0
    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->m:Z

    :cond_1
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onStarted()V

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->a()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->b()V

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->h()V

    .line 124
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZLcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 154
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->e:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    .line 158
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 159
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:I

    .line 160
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/av;->b()V

    return p3

    .line 162
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {p1, p6, p9, p10}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 164
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:I
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/av$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/av$d; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/av;->c()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/av$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/f;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    throw v0
.end method

.method protected supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gm;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation

    .line 9
    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 12
    :cond_0
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v3, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-static {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bd;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/cb;)Z

    move-result p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bd;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a()Lcom/google/vr/sdk/widgets/video/deps/gk;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_2
    const-string v5, "audio/raw"

    .line 17
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    iget v6, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    invoke-interface {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bd;->c:Lcom/google/vr/sdk/widgets/video/deps/av;

    const/4 v6, 0x2

    .line 18
    invoke-interface {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/av;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v5

    .line 21
    :cond_5
    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->j:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 23
    :goto_1
    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/cb;->b:I

    if-ge v7, v9, :cond_7

    .line 24
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(I)Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    move-result-object v9

    iget-boolean v9, v9, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->d:Z

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    .line 26
    :cond_7
    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v0, v8}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v8, :cond_8

    .line 29
    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 30
    invoke-interface {p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 v5, 0x2

    :cond_8
    return v5

    :cond_9
    if-nez p2, :cond_a

    return v6

    .line 37
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/gk;

    .line 38
    invoke-virtual {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gk;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 39
    invoke-virtual {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/gk;->b(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v4, 0x10

    :cond_b
    if-eqz p2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x3

    :goto_2
    or-int p1, v4, v1

    or-int/2addr p1, v3

    return p1
.end method
