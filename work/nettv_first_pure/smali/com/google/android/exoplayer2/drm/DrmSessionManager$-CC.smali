.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# direct methods
.method public static $default$preacquireSession(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    return-object p0
.end method

.method public static $default$prepare(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0

    return-void
.end method

.method public static $default$release(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 0

    return-void
.end method

.method public static getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-object v0
.end method
