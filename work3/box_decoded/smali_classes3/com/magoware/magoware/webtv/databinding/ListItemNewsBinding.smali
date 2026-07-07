.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemNewsBinding.java"


# instance fields
.field protected mClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mNewsFeed:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final newsDescription:Landroid/widget/TextView;

.field public final newsPoster:Landroid/widget/ImageView;

.field public final newsSource:Landroid/widget/TextView;

.field public final newsTimestamp:Landroid/widget/TextView;

.field public final newsTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "newsDescription",
            "newsPoster",
            "newsSource",
            "newsTimestamp",
            "newsTitle"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->newsDescription:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->newsPoster:Landroid/widget/ImageView;

    .line 47
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->newsSource:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->newsTimestamp:Landroid/widget/TextView;

    .line 49
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->newsTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 106
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
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

    const v0, 0x7f0e0132

    .line 118
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
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

    .line 69
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
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

    const v0, 0x7f0e0132

    .line 83
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;
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

    const v0, 0x7f0e0132

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    return-object p0
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getNewsFeed()Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->mNewsFeed:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;

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

.method public abstract setNewsFeed(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newsFeed"
        }
    .end annotation
.end method
