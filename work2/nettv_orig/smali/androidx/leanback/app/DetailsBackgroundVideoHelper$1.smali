.class Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;
.super Landroidx/leanback/widget/ParallaxTarget;
.source "DetailsBackgroundVideoHelper.java"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Landroidx/leanback/widget/ParallaxTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;->this$0:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    :goto_0
    return-void
.end method
