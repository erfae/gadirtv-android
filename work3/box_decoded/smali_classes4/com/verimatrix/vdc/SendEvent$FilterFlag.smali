.class public final enum Lcom/verimatrix/vdc/SendEvent$FilterFlag;
.super Ljava/lang/Enum;
.source "SendEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/SendEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/SendEvent$FilterFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum APP:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum CPU:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum DIRECT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum HEARTBEAT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum IP_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum LOCATION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum MAC_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum MEMORY:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

.field public static final enum SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 11
    new-instance v1, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v3, "LOCATION"

    const/4 v4, 0x1

    const-string v5, "location"

    invoke-direct {v1, v3, v4, v5}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->LOCATION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 12
    new-instance v3, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v5, "APP"

    const/4 v6, 0x2

    const-string v7, "app"

    invoke-direct {v3, v5, v6, v7}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->APP:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 13
    new-instance v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v7, "DATA"

    const/4 v8, 0x3

    const-string v9, "data"

    invoke-direct {v5, v7, v8, v9}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 14
    new-instance v7, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v9, "QOS"

    const/4 v10, 0x4

    const-string v11, "qos"

    invoke-direct {v7, v9, v10, v11}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 15
    new-instance v9, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v11, "SESSION"

    const/4 v12, 0x5

    const-string v13, "session"

    invoke-direct {v9, v11, v12, v13}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 16
    new-instance v11, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v13, "DIRECT"

    const/4 v14, 0x6

    const-string v15, "direct"

    invoke-direct {v11, v13, v14, v15}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DIRECT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 17
    new-instance v13, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "HEARTBEAT"

    const/4 v14, 0x7

    const-string v12, "heartbeat"

    invoke-direct {v13, v15, v14, v12}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->HEARTBEAT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 18
    new-instance v12, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "NETWORK"

    const/16 v14, 0x8

    const-string v10, "network"

    invoke-direct {v12, v15, v14, v10}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 19
    new-instance v10, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "IP_ADDRESS"

    const/16 v14, 0x9

    const-string v8, "ip_address"

    invoke-direct {v10, v15, v14, v8}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->IP_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 20
    new-instance v8, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "CPU"

    const/16 v14, 0xa

    const-string v6, "cpu"

    invoke-direct {v8, v15, v14, v6}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->CPU:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 21
    new-instance v6, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "MAC_ADDRESS"

    const/16 v14, 0xb

    const-string v4, "mac_address"

    invoke-direct {v6, v15, v14, v4}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->MAC_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    .line 22
    new-instance v4, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v15, "MEMORY"

    const/16 v14, 0xc

    const-string v2, "memory"

    invoke-direct {v4, v15, v14, v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->MEMORY:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    .line 9
    sput-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->$VALUES:[Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/SendEvent$FilterFlag;
    .locals 1

    .line 9
    const-class v0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/SendEvent$FilterFlag;
    .locals 1

    .line 9
    sget-object v0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->$VALUES:[Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/SendEvent$FilterFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->name:Ljava/lang/String;

    return-object v0
.end method
