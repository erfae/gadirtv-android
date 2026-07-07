.class public final Lcom/google/android/gms/internal/cast/zzbr;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private zzut:Z

.field private final zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

.field private final zzvk:J

.field private final zzwh:Landroid/widget/SeekBar;

.field private zzwi:Ljava/lang/Boolean;

.field private zzwj:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;JLcom/google/android/gms/cast/framework/media/uicontroller/zzb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzut:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwj:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    .line 5
    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvk:J

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/media/widget/zzg;->zza(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwj:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final zzef()V
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzut:Z

    if-nez v2, :cond_1

    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdl()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 41
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 45
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_4

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwi:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v4

    if-eq v3, v4, :cond_8

    .line 48
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwi:Ljava/lang/Boolean;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    new-instance v1, Lcom/google/android/gms/internal/cast/zzbu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cast/zzbu;-><init>(Lcom/google/android/gms/internal/cast/zzbr;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 55
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwj:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    return-void

    .line 29
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->getMaxProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdl()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzwh:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onMediaStatusUpdated()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbr;->zzef()V

    return-void
.end method

.method public final onProgressUpdated(JJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbr;->zzef()V

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    .line 10
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzvk:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbr;->zzef()V

    return-void
.end method

.method public final onSessionEnded()V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    .line 18
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzbr;->zzef()V

    return-void
.end method

.method public final zzk(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzbr;->zzut:Z

    return-void
.end method
