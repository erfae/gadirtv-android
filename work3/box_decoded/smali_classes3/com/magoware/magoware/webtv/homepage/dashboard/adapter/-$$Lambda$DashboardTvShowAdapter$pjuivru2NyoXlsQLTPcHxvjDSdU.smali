.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->lambda$onBindViewHolder$0$DashboardTvShowAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V

    return-void
.end method
