.class Lcom/magoware/magoware/webtv/activities/CustomActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/activities/CustomActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/activities/CustomActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/CustomActivity$1;->this$0:Lcom/magoware/magoware/webtv/activities/CustomActivity;

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

    .line 51
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/CustomActivity$1;->this$0:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->access$002(Lcom/magoware/magoware/webtv/activities/CustomActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/CustomActivity$1;->this$0:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->access$102(Lcom/magoware/magoware/webtv/activities/CustomActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/CustomActivity$1;->this$0:Lcom/magoware/magoware/webtv/activities/CustomActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->requestStoragePermissions()V

    return-void
.end method
