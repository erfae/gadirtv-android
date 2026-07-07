.class Lcom/verimatrix/vdc/MonitorLogin$2;
.super Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorLogin;->loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorLogin;

.field final synthetic val$loginAction:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field final synthetic val$server:Lcom/verimatrix/vdc/MonitorLogin$Server;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/MonitorLogin$LoginAction;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    iput-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->val$server:Lcom/verimatrix/vdc/MonitorLogin$Server;

    iput-object p4, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->val$loginAction:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;-><init>(Lcom/verimatrix/vdc/MonitorLogin;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 300
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    if-eqz v0, :cond_3

    .line 304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    .line 307
    iget-boolean v0, p1, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->config:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/verimatrix/vdc/MonitorLogin$Server;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->val$server:Lcom/verimatrix/vdc/MonitorLogin$Server;

    iget-object v2, v2, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->val$server:Lcom/verimatrix/vdc/MonitorLogin$Server;

    iget-object v3, v3, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v1, v0}, Lcom/verimatrix/vdc/MonitorLogin;->access$100(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    .line 312
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->val$loginAction:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 314
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorLogin;->access$200(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/Configuration;

    move-result-object v8

    .line 315
    new-instance v1, Lcom/verimatrix/vdc/Configuration;

    invoke-direct {v1, v8}, Lcom/verimatrix/vdc/Configuration;-><init>(Lcom/verimatrix/vdc/Configuration;)V

    .line 317
    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v2}, Lcom/verimatrix/vdc/MonitorLogin;->access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    iget-object v5, p1, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->config:Ljava/lang/String;

    new-instance v7, Landroid/os/Messenger;

    new-instance p1, Lcom/verimatrix/vdc/MonitorLogin$2$1;

    iget-object v9, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-direct {p1, p0, v9, v0, v1}, Lcom/verimatrix/vdc/MonitorLogin$2$1;-><init>(Lcom/verimatrix/vdc/MonitorLogin$2;Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V

    invoke-direct {v7, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/NetworkManager;->initConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Messenger;)V

    .line 331
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorLogin;->access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/verimatrix/vdc/Preferences;->getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Preferences;->isFinishedWithCrash()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorLogin;->access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "finished_with_crash=true"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_reset"

    invoke-static {p1, v8, v1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorLogin;->access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;

    move-result-object v7

    const/16 v9, 0x19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 334
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorLogin;->access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/verimatrix/vdc/Preferences;->getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Preferences;->setFinishedWithCrash(Z)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 338
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login request error, back to the previous server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorLogin;->access$600(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorLogin;->access$600(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/MonitorLogin;->access$700(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'login response ignored because logout was requested: skip\'"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Login messenger receive incorrect message"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
