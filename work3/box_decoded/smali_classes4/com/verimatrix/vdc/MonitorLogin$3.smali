.class Lcom/verimatrix/vdc/MonitorLogin$3;
.super Ljava/lang/Object;
.source "MonitorLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorLogin;->logout(Lcom/verimatrix/vdc/Configuration;)Lcom/verimatrix/vdc/Monitor$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorLogin;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorLogin;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$3;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$3;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGOUT_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin$3;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-static {v2}, Lcom/verimatrix/vdc/MonitorLogin;->access$600(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLogin;->access$800(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method
