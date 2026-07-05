.class public final synthetic Lcom/google/android/exoplayer2/drm/DefaultDrmSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->$r8$lambda$DxYpyadwFcAWqoX__uGLq-0ZR2E(ILcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
