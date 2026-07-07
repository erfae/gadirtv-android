.class public Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "VirtualRemoteOnScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private virtualRemoteViewClickListener:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VirtualRemoteOnScreen"

    .line 19
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->TAG:Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->initializeViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "VirtualRemoteOnScreen"

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->TAG:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->initializeViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "VirtualRemoteOnScreen"

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->TAG:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->initializeViews(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initializeViews(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "layout_inflater"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    const v0, 0x7f0e01fb

    .line 51
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public hideVirtualRemote()V
    .locals 1

    const/16 v0, 0x8

    .line 102
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onClick view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->virtualRemoteViewClickListener:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;->onVirtualRemoteViewClicked(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 61
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    const v0, 0x7f0b03f5

    .line 63
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03f6

    .line 66
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0213

    .line 69
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0214

    .line 72
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b06b3

    .line 75
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b06b4

    .line 78
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0241

    .line 81
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x4d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0242

    .line 84
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b05da

    .line 87
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x4d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b05db

    .line 90
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVirtualRemoteViewClickListener(Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->virtualRemoteViewClickListener:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;

    return-void
.end method

.method public showVirtualRemote()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->setVisibility(I)V

    return-void
.end method
