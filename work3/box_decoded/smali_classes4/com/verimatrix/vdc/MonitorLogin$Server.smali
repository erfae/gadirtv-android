.class Lcom/verimatrix/vdc/MonitorLogin$Server;
.super Ljava/lang/Object;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server"
.end annotation


# instance fields
.field ip:Ljava/lang/String;

.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorLogin;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p2, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    .line 594
    iput-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lcom/verimatrix/vdc/MonitorLogin$Server;)Z
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    iget-object p1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
