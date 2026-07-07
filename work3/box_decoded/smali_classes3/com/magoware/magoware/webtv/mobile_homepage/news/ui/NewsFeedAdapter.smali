.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "NewsFeedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0013H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "navigateToNewsDetail",
        "Landroid/view/View$OnClickListener;",
        "id",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "NewsFeedViewHolder",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDiffCallback;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method private final navigateToNewsDetail(J)Landroid/view/View$OnClickListener;
    .locals 1

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$navigateToNewsDetail$1;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$navigateToNewsDetail$1;-><init>(J)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;

    .line 22
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->navigateToNewsDetail(J)Landroid/view/View$OnClickListener;

    move-result-object v0

    const-string v1, "newsFeed"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;->bind(Landroid/view/View$OnClickListener;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;)V

    .line 23
    iget-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/magoware/magoware/webtv/R$id;->news_timestamp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "holder.itemView.news_timestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->INSTANCE:Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/DateUtils;->getSimpleFormatDate(J)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "parent.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;

    if-nez p2, :cond_0

    const-string v1, "context"

    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    .line 30
    invoke-static {p2, p1, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;

    move-result-object p1

    const-string p2, "ListItemNewsBinding.infl\u2026(context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter$NewsFeedViewHolder;-><init>(Lcom/magoware/magoware/webtv/databinding/ListItemNewsBinding;)V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedAdapter;->context:Landroid/content/Context;

    return-void
.end method
