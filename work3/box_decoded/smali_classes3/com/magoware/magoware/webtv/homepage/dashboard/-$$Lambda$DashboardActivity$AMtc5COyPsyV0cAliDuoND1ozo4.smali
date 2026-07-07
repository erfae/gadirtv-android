.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;->f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$AMtc5COyPsyV0cAliDuoND1ozo4;->f$1:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$showCarouselMenu$8$DashboardActivity(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;)V

    return-void
.end method
