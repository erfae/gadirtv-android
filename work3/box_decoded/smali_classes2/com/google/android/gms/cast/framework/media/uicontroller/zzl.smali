.class final Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final synthetic zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private final synthetic zzvi:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvi:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzcz()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdo()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdo()I

    move-result p2

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvi:Landroid/widget/SeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 12
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-object p2, p2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzvf:Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;->zzdp()I

    move-result p2

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvi:Landroid/widget/SeekBar;

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzl;->zzvc:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
