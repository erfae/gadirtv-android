.class final Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;
.super Landroidx/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfoOffsetAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field public final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>()V

    .line 2
    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    sub-float/2addr p3, p2

    .line 3
    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    iget v1, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-void
.end method
