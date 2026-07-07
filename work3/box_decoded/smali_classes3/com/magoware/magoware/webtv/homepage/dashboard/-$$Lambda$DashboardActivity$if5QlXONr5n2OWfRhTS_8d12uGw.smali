.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$if5QlXONr5n2OWfRhTS_8d12uGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$if5QlXONr5n2OWfRhTS_8d12uGw;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$if5QlXONr5n2OWfRhTS_8d12uGw;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$getVodTvShows$16$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
