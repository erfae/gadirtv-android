.class Lcom/inka/ncg2/a/g$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/a/g;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/a/g;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/inka/ncg2/a/g$2;->a:Lcom/inka/ncg2/a/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 240
    :try_start_0
    iget-object p1, p0, Lcom/inka/ncg2/a/g$2;->a:Lcom/inka/ncg2/a/g;

    invoke-static {p1}, Lcom/inka/ncg2/a/g;->b(Lcom/inka/ncg2/a/g;)Z

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 246
    iget-object p2, p0, Lcom/inka/ncg2/a/g$2;->a:Lcom/inka/ncg2/a/g;

    invoke-static {p2}, Lcom/inka/ncg2/a/g;->b(Lcom/inka/ncg2/a/g;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 247
    iget-object p2, p0, Lcom/inka/ncg2/a/g$2;->a:Lcom/inka/ncg2/a/g;

    invoke-static {p2, p1}, Lcom/inka/ncg2/a/g;->a(Lcom/inka/ncg2/a/g;Z)Z

    .line 248
    iget-object p1, p0, Lcom/inka/ncg2/a/g$2;->a:Lcom/inka/ncg2/a/g;

    invoke-static {p1}, Lcom/inka/ncg2/a/g;->c(Lcom/inka/ncg2/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
