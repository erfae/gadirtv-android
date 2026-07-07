.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->lambda$onBindViewHolder$0$DashboardSeasonAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;Landroid/view/View;)V

    return-void
.end method
