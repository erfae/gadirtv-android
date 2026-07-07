.class public Lcom/google/vr/cardboard/UiLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UiLayer"


# instance fields
.field private alignmentMarker:Landroid/widget/RelativeLayout;

.field private volatile alignmentMarkerScale:F

.field private backButton:Landroid/widget/ImageButton;

.field private backButtonHolder:Landroid/view/View;

.field private volatile backButtonListener:Ljava/lang/Runnable;

.field private volatile buttonClickCallbackOverride:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private currentLayoutId:I

.field private volatile isAlignmentMarkerEnabled:Z

.field private volatile isEnabled:Z

.field private volatile isSettingsButtonEnabled:Z

.field private rootInnerLayout:Landroid/widget/RelativeLayout;

.field private final rootOuterLayout:Landroid/widget/FrameLayout;

.field private settingsButton:Landroid/widget/ImageButton;

.field private settingsButtonHolder:Landroid/view/View;

.field private volatile settingsButtonListener:Ljava/lang/Runnable;

.field private volatile transitionListener:Ljava/lang/Runnable;

.field private transitionView:Lcom/google/vr/cardboard/TransitionView;

.field private volatile transitionViewEnabled:Z

.field private volatile viewerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    .line 6
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    .line 7
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarkerScale:F

    .line 10
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    .line 11
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$RootOuterLayout;-><init>(Lcom/google/vr/cardboard/UiLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootOuterLayout:Landroid/widget/FrameLayout;

    .line 12
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->inflateViewsWithLayoutId(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/google/vr/cardboard/UiLayer;->getTransitionView()Lcom/google/vr/cardboard/TransitionView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/vr/cardboard/UiLayer;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/google/vr/cardboard/UiLayer;->currentLayoutId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/google/vr/cardboard/UiLayer;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->inflateViewsWithLayoutId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Z)I
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->rootOuterLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/vr/cardboard/UiLayer;)Landroid/view/View;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/view/View;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonHolder:Landroid/view/View;

    return-object p0
.end method

.method private static computeVisibility(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method private getTransitionView()Lcom/google/vr/cardboard/TransitionView;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/TransitionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    .line 58
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/TransitionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-boolean v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setViewerName(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setTransitionListener(Ljava/lang/Runnable;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 66
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object v0
.end method

.method private inflateViewsWithLayoutId(I)V
    .locals 5

    .line 16
    iput p1, p0, Lcom/google/vr/cardboard/UiLayer;->currentLayoutId:I

    .line 17
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/TransitionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    .line 19
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 20
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->rootOuterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    .line 22
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->rootOuterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    .line 24
    iget-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    .line 25
    :cond_2
    new-instance p1, Lcom/google/vr/cardboard/UiLayer$1;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/UiLayer$1;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    .line 26
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_settings_button_holder:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonHolder:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonHolder:Landroid/view/View;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$2;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$2;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_settings_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    const-string v0, "Settings"

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$3;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$3;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_back_button_holder:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonHolder:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonHolder:Landroid/view/View;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$4;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$4;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_back_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    .line 39
    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$5;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$5;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 42
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonHolder:Landroid/view/View;

    const/4 v0, -0x2

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 44
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonHolder:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_5
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonHolder:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 49
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonHolder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    :cond_6
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootInnerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_alignment_marker:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    .line 53
    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getAlignmentMarkerEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget p1, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarkerScale:F

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V

    return-void
.end method

.method public static scaleAlignmentMarkerLayoutParams(Landroid/content/Context;FLandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/vr/cardboard/R$dimen;->alignment_marker_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    const/16 p1, 0xf

    .line 91
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 92
    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void

    .line 93
    :cond_1
    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public getAlignmentMarkerEnabled()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    return v0
.end method

.method public getBackButtonEnabled()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackButtonListener()Ljava/lang/Runnable;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSettingsButtonEnabled()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    return v0
.end method

.method public getTransitionViewEnabled()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootOuterLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getViewerName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    return v0
.end method

.method public isTransitionViewVisible()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/TransitionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 1

    .line 84
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 85
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$9;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$9;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlignmentMarkerScale(F)V
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarkerScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    .line 99
    :cond_1
    iput p1, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarkerScale:F

    .line 100
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$10;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$10;-><init>(Lcom/google/vr/cardboard/UiLayer;F)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$8;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$8;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setButtonClickCallbackOverride(Ljava/lang/Runnable;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 70
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    .line 71
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$6;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$6;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPortraitSupportEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 14
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer_with_portrait_support:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->inflateViewsWithLayoutId(I)V

    return-void
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 1

    .line 74
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 75
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$7;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$7;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSettingsButtonListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1

    .line 102
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    .line 103
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$11;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$11;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransitionViewListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$12;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$12;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$13;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$13;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
