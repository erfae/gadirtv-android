.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$rYn08TE43QNZVwlu3J2s-9M5NDQ;
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

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$rYn08TE43QNZVwlu3J2s-9M5NDQ;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$rYn08TE43QNZVwlu3J2s-9M5NDQ;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$getHotelDashboardInfo$6$DashboardActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;)V

    return-void
.end method
