.class final enum Lcom/verimatrix/vdc/MonitorLogin$LoginState;
.super Ljava/lang/Enum;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/MonitorLogin$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

.field public static final enum ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

.field public static final enum ATTEMPTING_LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

.field public static final enum LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

.field public static final enum LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const-string v1, "LOGGED_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 28
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const-string v3, "ATTEMPTING_LOGON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 29
    new-instance v3, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const-string v5, "LOGGED_IN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 30
    new-instance v5, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const-string v7, "ATTEMPTING_LOGOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 26
    sput-object v7, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/MonitorLogin$LoginState;
    .locals 1

    .line 26
    const-class v0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/MonitorLogin$LoginState;
    .locals 1

    .line 26
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->value:I

    return v0
.end method
