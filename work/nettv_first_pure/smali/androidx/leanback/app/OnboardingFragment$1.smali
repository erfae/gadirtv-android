.class Landroidx/leanback/app/OnboardingFragment$1;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/OnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/OnboardingFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/OnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment$1;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment$1;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment$1;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment$1;->this$0:Landroidx/leanback/app/OnboardingFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_0
    return-void
.end method
