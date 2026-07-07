.class final enum Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;
.super Ljava/lang/Enum;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoginStimuli"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum CHANGE_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum FALLBACK_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum LOGIN_FAILURE:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum LOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum LOGIN_SUCCESS:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum LOGOUT_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

.field public static final enum RELOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 44
    new-instance v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v1, "LOGIN_REQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 45
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v3, "LOGOUT_REQ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGOUT_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 46
    new-instance v3, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v5, "LOGIN_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_SUCCESS:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 47
    new-instance v5, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v7, "LOGIN_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_FAILURE:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 48
    new-instance v7, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v9, "RELOGIN_REQ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->RELOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 49
    new-instance v9, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v11, "CHANGE_SERVER_REQ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->CHANGE_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    .line 50
    new-instance v11, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const-string v13, "FALLBACK_SERVER_REQ"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->FALLBACK_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 43
    sput-object v13, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;
    .locals 1

    .line 43
    const-class v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;
    .locals 1

    .line 43
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->value:I

    return v0
.end method
