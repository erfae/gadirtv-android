.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$QCjMlfDSFxxxeryPjKu4fZ21VfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$QCjMlfDSFxxxeryPjKu4fZ21VfY;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$QCjMlfDSFxxxeryPjKu4fZ21VfY;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->lambda$getEpisodeDetail$1$DashboardEpisodeAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
