.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemMoviesNewBinding.java"


# instance fields
.field public final feedMovieNewIcon:Landroid/widget/ImageView;

.field public final feedMovieNewLabel:Landroid/widget/TextView;

.field public final feedMovieNewLinear:Landroid/widget/LinearLayout;

.field public final feedMovieNewPoster:Landroid/widget/ImageView;

.field public final feedMovieNewTitle:Landroid/widget/TextView;

.field public final feedMoviesNewView:Landroid/widget/Button;

.field protected mClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHomeFeedMoviesNew:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "feedMovieNewIcon",
            "feedMovieNewLabel",
            "feedMovieNewLinear",
            "feedMovieNewPoster",
            "feedMovieNewTitle",
            "feedMoviesNewView"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMovieNewIcon:Landroid/widget/ImageView;

    .line 51
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMovieNewLabel:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMovieNewLinear:Landroid/widget/LinearLayout;

    .line 53
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMovieNewPoster:Landroid/widget/ImageView;

    .line 54
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMovieNewTitle:Landroid/widget/TextView;

    .line 55
    iput-object p9, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->feedMoviesNewView:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 112
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
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

    const v0, 0x7f0e0130

    .line 124
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
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

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
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

    const v0, 0x7f0e0130

    .line 89
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;
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

    const v0, 0x7f0e0130

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;

    return-object p0
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getHomeFeedMoviesNew()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesNewBinding;->mHomeFeedMoviesNew:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;

    return-object v0
.end method

.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation
.end method

.method public abstract setHomeFeedMoviesNew(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedMoviesNew"
        }
    .end annotation
.end method
