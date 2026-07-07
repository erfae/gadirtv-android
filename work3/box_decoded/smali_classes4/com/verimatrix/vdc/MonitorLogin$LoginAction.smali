.class final enum Lcom/verimatrix/vdc/MonitorLogin$LoginAction;
.super Ljava/lang/Enum;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoginAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/MonitorLogin$LoginAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum DELAY:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum DONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum ERROR:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum LOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field public static final enum RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 64
    new-instance v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 65
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v3, "LOGOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 66
    new-instance v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 67
    new-instance v5, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ERROR:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 68
    new-instance v7, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v9, "DELAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DELAY:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 69
    new-instance v9, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v11, "DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 70
    new-instance v11, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v13, "RELOGIN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 71
    new-instance v13, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const-string v15, "FALLBACK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 63
    sput-object v15, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/MonitorLogin$LoginAction;
    .locals 1

    .line 63
    const-class v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;
    .locals 1

    .line 63
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->$VALUES:[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->value:I

    return v0
.end method
