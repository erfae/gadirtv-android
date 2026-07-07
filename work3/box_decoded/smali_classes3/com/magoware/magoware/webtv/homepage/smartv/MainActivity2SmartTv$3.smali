.class Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity2SmartTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$3;->this$0:Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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

    .line 257
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv$3;->this$0:Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;

    const v0, 0x7f0b01ca

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/homepage/smartv/MainActivity2SmartTv;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->setVisibility(I)V

    .line 259
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->removeAllViews()V

    .line 260
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->initView(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
