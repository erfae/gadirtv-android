.class public final Lcom/google/vr/sdk/widgets/video/deps/al;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/al$a;,
        Lcom/google/vr/sdk/widgets/video/deps/al$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/al$a;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/al$b;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/aj;

.field private e:I

.field private f:I

.field private g:F

.field private h:Landroid/media/AudioFocusRequest;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/al$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->g:F

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    .line 8
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Lcom/google/vr/sdk/widgets/video/deps/al$b;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/al$a;

    invoke-direct {p1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/al$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/al;Lcom/google/vr/sdk/widgets/video/deps/al$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/al$a;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/al;F)F
    .locals 0

    .line 116
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->g:F

    return p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aj;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 95
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    const/4 v2, 0x3

    const-string v3, "AudioFocusManager"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 108
    :pswitch_0
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unidentified audio usage: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 102
    :pswitch_1
    sget p0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    return v4

    .line 105
    :pswitch_2
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    if-ne p0, v5, :cond_2

    return v4

    :cond_2
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 98
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/al;Z)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/al;)Z
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/al;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    return p0
.end method

.method private b(Z)V
    .locals 2

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 66
    :cond_1
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->h()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->g()V

    :goto_0
    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    :cond_3
    return-void
.end method

.method private c()I
    .locals 4

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Z)V

    :cond_0
    return v1

    .line 47
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 48
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->f()I

    move-result v0

    goto :goto_0

    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->e()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_1
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    .line 55
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->e:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    const/4 v1, 0x0

    :cond_6
    return v1
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/al;)Lcom/google/vr/sdk/widgets/video/deps/al$b;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Lcom/google/vr/sdk/widgets/video/deps/al$b;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/al;)F
    .locals 0

    .line 115
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->g:F

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Z)V

    return-void
.end method

.method private e()I
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 72
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/al$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->d:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 73
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aj;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(I)I

    move-result v2

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->i:Z

    if-eqz v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->i()Z

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->d:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 81
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aj;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/aj;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/al$a;

    .line 83
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->i:Z

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/al$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private h()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->d:Lcom/google/vr/sdk/widgets/video/deps/aj;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->g:F

    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aj;ZI)I
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    const-string v2, "SimpleExoPlayer must be created with a context to handle audio focus."

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->d:Lcom/google/vr/sdk/widgets/video/deps/aj;

    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->d:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 18
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/aj;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 19
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->c()I

    move-result p1

    return p1

    :cond_4
    if-ne p3, v0, :cond_5

    return v2

    .line 24
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Z)I

    move-result p1

    return p1
.end method

.method public a(Z)I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->c()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(ZI)I
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->d()V

    const/4 p1, -0x1

    return p1

    :cond_1
    if-eq p2, v1, :cond_2

    .line 34
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/al;->c()I

    move-result p1

    return p1

    .line 35
    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->f:I

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public b()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Z)V

    return-void
.end method
