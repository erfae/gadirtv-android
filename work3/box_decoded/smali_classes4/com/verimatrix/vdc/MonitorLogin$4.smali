.class synthetic Lcom/verimatrix/vdc/MonitorLogin$4;
.super Ljava/lang/Object;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

.field static final synthetic $SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginStimuli:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 161
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->values()[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DELAY:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ERROR:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v0, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 169
    :catch_7
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->values()[Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginStimuli:[I

    :try_start_8
    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->CHANGE_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
