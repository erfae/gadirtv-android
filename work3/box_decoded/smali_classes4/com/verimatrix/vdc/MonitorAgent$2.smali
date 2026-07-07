.class Lcom/verimatrix/vdc/MonitorAgent$2;
.super Ljava/lang/Object;
.source "MonitorAgent.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorAgent;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorAgent;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorAgent;Landroid/app/Application;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent$2;->this$0:Lcom/verimatrix/vdc/MonitorAgent;

    iput-object p2, p0, Lcom/verimatrix/vdc/MonitorAgent$2;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent$2;->val$application:Landroid/app/Application;

    invoke-static {v0}, Lcom/verimatrix/vdc/Preferences;->getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Preferences;->setFinishedWithCrash(Z)V

    .line 176
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent$2;->this$0:Lcom/verimatrix/vdc/MonitorAgent;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorAgent;->access$400(Lcom/verimatrix/vdc/MonitorAgent;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
