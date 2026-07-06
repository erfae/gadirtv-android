.class Landroidx/leanback/app/HeadersFragment$3;
.super Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;
.source "HeadersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/HeadersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroidx/leanback/app/HeadersFragment$NoOverlappingFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/leanback/app/HeadersFragment$NoOverlappingFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
