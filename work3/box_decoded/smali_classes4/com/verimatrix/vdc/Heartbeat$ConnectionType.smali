.class final enum Lcom/verimatrix/vdc/Heartbeat$ConnectionType;
.super Ljava/lang/Enum;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Heartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Heartbeat$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum BLUETOOTH:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum ETHERNET:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum MOBILE:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum OTHER:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum WIFI:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

.field public static final enum WIMAX:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;


# instance fields
.field private final appId:I

.field private final systemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->WIFI:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 42
    new-instance v1, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v4, "WIMAX"

    const/4 v5, 0x6

    const/16 v6, 0x3e9

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->WIMAX:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 43
    new-instance v4, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v6, "BLUETOOTH"

    const/4 v7, 0x2

    const/4 v8, 0x7

    const/16 v9, 0x3ea

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->BLUETOOTH:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 44
    new-instance v6, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v8, "ETHERNET"

    const/4 v9, 0x3

    const/16 v10, 0x9

    const/16 v11, 0x3eb

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->ETHERNET:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 45
    new-instance v8, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v10, "MOBILE"

    const/4 v11, 0x4

    const/16 v12, 0x3ec

    invoke-direct {v8, v10, v11, v2, v12}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->MOBILE:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 46
    new-instance v10, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    const-string v12, "OTHER"

    const/4 v13, 0x5

    const/4 v14, -0x1

    const/16 v15, 0x3ed

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->OTHER:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    new-array v5, v5, [Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    aput-object v6, v5, v9

    aput-object v8, v5, v11

    aput-object v10, v5, v13

    .line 39
    sput-object v5, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->$VALUES:[Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->systemId:I

    .line 53
    iput p4, p0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->appId:I

    return-void
.end method

.method public static getConnectionTypeId(I)I
    .locals 6

    .line 61
    sget-object v0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->OTHER:Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    .line 62
    invoke-static {}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->values()[Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    iget v5, v4, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->systemId:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->getAppId()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Heartbeat$ConnectionType;
    .locals 1

    .line 39
    const-class v0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Heartbeat$ConnectionType;
    .locals 1

    .line 39
    sget-object v0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->$VALUES:[Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Heartbeat$ConnectionType;

    return-object v0
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->appId:I

    return v0
.end method
