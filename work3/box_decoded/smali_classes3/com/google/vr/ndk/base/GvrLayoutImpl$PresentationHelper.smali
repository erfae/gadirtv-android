.class Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private final displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private externalDisplayName:Ljava/lang/String;

.field private final layout:Landroid/widget/RelativeLayout$LayoutParams;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalParent:Landroid/widget/FrameLayout;

.field private presentation:Landroid/app/Presentation;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/vr/cardboard/DisplaySynchronizer;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->originalParent:Landroid/widget/FrameLayout;

    .line 5
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->view:Landroid/view/View;

    .line 6
    iput-object p4, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 7
    iput-object p5, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    const-string p2, "display"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    return-void
.end method

.method private static detachViewFromParent(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private hasCurrentPresentationExpired()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isValidExternalDisplay(Landroid/view/Display;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setDisplay(Landroid/view/Display;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 53
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->hasCurrentPresentationExpired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-static {p1, v0}, Lcom/google/vr/cardboard/DisplayUtils;->isSameDisplay(Landroid/view/Display;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    .line 59
    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->view:Landroid/view/View;

    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->detachViewFromParent(Landroid/view/View;)V

    if-eqz p1, :cond_4

    .line 63
    invoke-static {}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->access$500()Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 64
    invoke-static {}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->access$500()Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->context:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;->create(Landroid/content/Context;Landroid/view/Display;)Landroid/app/Presentation;

    move-result-object p1

    goto :goto_1

    .line 65
    :cond_3
    new-instance v2, Landroid/app/Presentation;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 66
    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2, v3}, Landroid/app/Presentation;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attaching Cardboard View to the external display failed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GvrLayoutImpl"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->cancel()V

    .line 72
    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 73
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->view:Landroid/view/View;

    invoke-static {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->detachViewFromParent(Landroid/view/View;)V

    .line 74
    :cond_4
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->originalParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 75
    :goto_2
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 76
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_3

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    .line 79
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->setDisplay(Landroid/view/Display;)V

    if-eqz v0, :cond_6

    .line 81
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;

    .line 82
    invoke-interface {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;->onPresentationStopped()V

    goto :goto_4

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz p1, :cond_7

    .line 85
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;

    .line 86
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;->onPresentationStarted(Landroid/view/Display;)V

    goto :goto_5

    :cond_7
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;->onPresentationStarted(Landroid/view/Display;)V

    :cond_1
    return-void
.end method

.method public isPresenting()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->isValidExternalDisplay(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->externalDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16
    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 20
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 21
    invoke-direct {p0, v4}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->isValidExternalDisplay(Landroid/view/Display;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->setDisplay(Landroid/view/Display;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 28
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/app/Presentation;->cancel()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->presentation:Landroid/app/Presentation;

    .line 31
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;

    .line 32
    invoke-interface {v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;->onPresentationStopped()V

    goto :goto_0

    :cond_0
    return-void
.end method
