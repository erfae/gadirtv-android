.class Lcom/google/vr/ndk/base/GvrUiLayoutImpl;
.super Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;
    }
.end annotation


# static fields
.field private static final DAYDREAM_ALIGNMENT_MARKER_SCALE:F = 0.35f

.field private static final DEBUG:Z = false

.field static final FADE_TRANSITION_VIEW_DELAY_MILLIS:J = 0x64L

.field static final MIN_FADE_ALPHA:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "GvrUiLayoutImpl"


# instance fields
.field private final beginDimmingUiLayerRunnable:Ljava/lang/Runnable;

.field private final closeButtonListener:Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;

.field private daydreamModeEnabled:Z

.field private final delayDimmingUiLayerAfterVisibleRunnable:Ljava/lang/Runnable;

.field private final uiLayer:Lcom/google/vr/cardboard/UiLayer;

.field private uiLayerDimmingAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-direct {v0}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$0;-><init>(Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->delayDimmingUiLayerAfterVisibleRunnable:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$1;-><init>(Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->beginDimmingUiLayerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->daydreamModeEnabled:Z

    .line 7
    new-instance v0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->closeButtonListener:Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;

    .line 8
    new-instance p2, Lcom/google/vr/cardboard/UiLayer;

    invoke-direct {p2, p1}, Lcom/google/vr/cardboard/UiLayer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->createDefaultCloseButtonListener(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private beginDimmingUiLayer()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->cancelDimmingUiLayer()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->isTransitionViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->delayDimmingUiLayerAfterVisibleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 56
    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayerDimmingAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayerDimmingAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->setDimmedUiTouchOverride()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private static createDefaultCloseButtonListener(Landroid/content/Context;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;)Ljava/lang/Runnable;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 75
    new-instance p1, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$1;

    invoke-direct {p1, p0, v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamActivity(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 77
    new-instance p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;

    invoke-direct {p0, v1, v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    return-object p0

    .line 78
    :cond_1
    new-instance p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$3;

    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$3;-><init>(Landroid/app/Activity;)V

    return-object p0
.end method

.method private delayDimmingUiLayer(J)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->cancelDimmingUiLayer()V

    .line 46
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->beginDimmingUiLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setDimmedUiTouchOverride()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    new-instance v1, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$$Lambda$2;-><init>(Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setButtonClickCallbackOverride(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic bridge$lambda$0$GvrUiLayoutImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->beginDimmingUiLayer()V

    return-void
.end method

.method cancelDimmingUiLayer()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->beginDimmingUiLayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 64
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayerDimmingAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 66
    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayerDimmingAnimation:Landroid/animation/ObjectAnimator;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setButtonClickCallbackOverride(Ljava/lang/Runnable;)V

    return-void
.end method

.method delayDimmingUiLayerAfterVisible()V
    .locals 2

    const-wide/16 v0, 0x9c4

    .line 48
    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->delayDimmingUiLayer(J)V

    return-void
.end method

.method getRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method getUiLayer()Lcom/google/vr/cardboard/UiLayer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    return-object v0
.end method

.method invokeCloseButtonListener()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->closeButtonListener:Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->run()V

    return-void
.end method

.method isDaydreamModeEnabled()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->daydreamModeEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method final synthetic lambda$setDimmedUiTouchOverride$0$GvrUiLayoutImpl()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->delayDimmingUiLayer(J)V

    return-void
.end method

.method public setCloseButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    const-class v0, Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->closeButtonListener:Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl$CloseButtonListenerWrapper;->setClientCloseButtonListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDaydreamModeEnabled(Z)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->daydreamModeEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->daydreamModeEnabled:Z

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const v0, 0x3eb33333    # 0.35f

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V

    .line 41
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    return-void

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    return-void
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonEnabled(Z)V

    return-void
.end method

.method public setSettingsButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-eqz p1, :cond_0

    .line 27
    const-class v1, Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->daydreamModeEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    return-void
.end method

.method public setTransitionViewListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-eqz p1, :cond_0

    .line 21
    const-class v1, Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->uiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/UiLayer;->setViewerName(Ljava/lang/String;)V

    return-void
.end method
