.class public abstract Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentNewsDetailBinding.java"


# instance fields
.field public final appbar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final newsDescription:Landroid/widget/TextView;

.field public final newsDetailImage:Landroid/widget/ImageView;

.field public final newsDetailScrollview:Landroidx/core/widget/NestedScrollView;

.field public final newsSource:Landroid/widget/TextView;

.field public final newsTimestamp:Landroid/widget/TextView;

.field public final newsTitle:Landroid/widget/TextView;

.field public final newsToolbar:Landroidx/appcompat/widget/Toolbar;

.field public final toolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "appbar",
            "newsDescription",
            "newsDetailImage",
            "newsDetailScrollview",
            "newsSource",
            "newsTimestamp",
            "newsTitle",
            "newsToolbar",
            "toolbarLayout"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 55
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsDescription:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsDetailImage:Landroid/widget/ImageView;

    .line 57
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsDetailScrollview:Landroidx/core/widget/NestedScrollView;

    .line 58
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsSource:Landroid/widget/TextView;

    .line 59
    iput-object p9, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsTimestamp:Landroid/widget/TextView;

    .line 60
    iput-object p10, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsTitle:Landroid/widget/TextView;

    .line 61
    iput-object p11, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->newsToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 62
    iput-object p12, p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->toolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e00c6

    .line 117
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 68
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e00c6

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e00c6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/FragmentNewsDetailBinding;

    return-object p0
.end method
