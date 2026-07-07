.class public Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "DetailsDescriptionPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 33
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    invoke-direct {v0}, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;-><init>()V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    .line 37
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 46
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    iget-object v1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    sget v2, Landroidx/leanback/supportleanbackshowcase/R$id;->primary_text:I

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    iget-object v2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    sget v3, Landroidx/leanback/supportleanbackshowcase/R$id;->secondary_text_first:I

    invoke-virtual {v1, v2, v3}, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    iget-object v3, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    sget v4, Landroidx/leanback/supportleanbackshowcase/R$id;->secondary_text_second:I

    invoke-virtual {v2, v3, v4}, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    iget-object v3, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mResourceCache:Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    sget v4, Landroidx/leanback/supportleanbackshowcase/R$id;->extra_text:I

    invoke-virtual {v3, p1, v4}, Landroidx/leanback/supportleanbackshowcase/utils/ResourceCache;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;

    .line 52
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->getDescription()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/DetailedCard;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 2

    .line 41
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/details/DetailsDescriptionPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Landroidx/leanback/supportleanbackshowcase/R$layout;->detail_view_content:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method
