.class Landroidx/leanback/app/OnboardingSupportFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OnboardingSupportFragment.java"


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/OnboardingSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/OnboardingSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$5;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$5;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    return-void
.end method
