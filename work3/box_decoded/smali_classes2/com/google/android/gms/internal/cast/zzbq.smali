.class public final Lcom/google/android/gms/internal/cast/zzbq;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final zzvn:Landroid/widget/ImageView;

.field private final zzvy:Landroid/view/View;

.field private final zzvz:Z

.field private final zzwa:Landroid/graphics/drawable/Drawable;

.field private final zzwb:Ljava/lang/String;

.field private final zzwc:Landroid/graphics/drawable/Drawable;

.field private final zzwd:Ljava/lang/String;

.field private final zzwe:Landroid/graphics/drawable/Drawable;

.field private final zzwf:Ljava/lang/String;

.field private zzwg:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwg:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwa:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwc:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_0

    move-object p4, p5

    .line 7
    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwe:Landroid/graphics/drawable/Drawable;

    .line 8
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_play:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwb:Ljava/lang/String;

    .line 9
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_pause:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwd:Ljava/lang/String;

    .line 10
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_stop:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwf:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvy:Landroid/view/View;

    .line 12
    iput-boolean p7, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvz:Z

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private final zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvy:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 47
    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwg:Z

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private final zzed()V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwa:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwb:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzbq;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwe:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwf:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzbq;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwc:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwd:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/zzbq;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/cast/zzbq;->zzj(Z)V

    return-void

    .line 37
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzbq;->zzj(Z)V

    :cond_5
    return-void

    .line 27
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private final zzj(Z)V
    .locals 3

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAccessibilityFocused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwg:Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvy:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzwg:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvy:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvz:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbq;->zzed()V

    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cast/zzbq;->zzj(Z)V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbq;->zzed()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbq;->zzvn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 19
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
