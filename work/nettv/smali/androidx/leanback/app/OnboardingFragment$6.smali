.class Landroidx/leanback/app/OnboardingFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/OnboardingFragment;

.field public final synthetic val$currentPageIndex:I


# direct methods
.method public constructor <init>(Landroidx/leanback/app/OnboardingFragment;I)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment$6;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iput p2, p0, Landroidx/leanback/app/OnboardingFragment$6;->val$currentPageIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment$6;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-object v0, p1, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingFragment;->getPageTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment$6;->this$0:Landroidx/leanback/app/OnboardingFragment;

    iget-object v0, p1, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingFragment;->getPageDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
