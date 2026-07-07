.class public final enum Lcom/verimatrix/vdc/Monitor$LoadErrorType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$LoadErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum DATA_OVERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum DATA_UNDERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum NO_CONNECTION:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum OTHER:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum SERVER_RESPONSE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum SYSTEM_RESOURCE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

.field public static final enum USER_ABORT:Lcom/verimatrix/vdc/Monitor$LoadErrorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 503
    new-instance v0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v1, "SERVER_RESPONSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->SERVER_RESPONSE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 504
    new-instance v1, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v3, "NO_CONNECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->NO_CONNECTION:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 505
    new-instance v3, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v5, "USER_ABORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->USER_ABORT:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 506
    new-instance v5, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v7, "SYSTEM_RESOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->SYSTEM_RESOURCE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 507
    new-instance v7, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v9, "DATA_OVERRUN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_OVERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 508
    new-instance v9, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v11, "DATA_UNDERRUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_UNDERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    .line 509
    new-instance v11, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->OTHER:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 502
    sput-object v13, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 513
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 514
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$LoadErrorType;
    .locals 1

    .line 502
    const-class v0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$LoadErrorType;
    .locals 1

    .line 502
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$LoadErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->value:I

    return v0
.end method
