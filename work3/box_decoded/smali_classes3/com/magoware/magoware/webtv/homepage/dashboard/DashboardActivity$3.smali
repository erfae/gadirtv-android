.class Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1555
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1564
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 1565
    :cond_0
    iget-object p0, p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Long;

    .line 1558
    invoke-static {p1}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object p1

    .line 1559
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    sget-object v0, Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;->INTENT_FCM_TOKEN:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "google_app_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$100(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setFirebaseIdObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$3;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    sget-object v0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$3$YeYYlwLPFaWDIHyTnTFx5bTXJY0;

    .line 1562
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
