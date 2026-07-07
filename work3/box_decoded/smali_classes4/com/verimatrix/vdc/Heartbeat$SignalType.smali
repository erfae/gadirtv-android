.class final enum Lcom/verimatrix/vdc/Heartbeat$SignalType;
.super Ljava/lang/Enum;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Heartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SignalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Heartbeat$SignalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum CDMA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum EDGE:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum EVD_0:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum EVD_A:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum EVD_B:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum GPRS:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum GSM:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum HRPD:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum HSDPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum HSPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum HSPAP:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum HSUPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum IDEN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum LTE:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum RTT:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum SCDMA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum UMTS:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum UNKNOWN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum WIFI:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum WLAN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

.field public static final enum WWAN:Lcom/verimatrix/vdc/Heartbeat$SignalType;


# instance fields
.field private final appId:I

.field private systemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 85
    new-instance v0, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->UNKNOWN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 86
    new-instance v1, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Heartbeat$SignalType;->WIFI:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 87
    new-instance v3, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v5, "WWAN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Heartbeat$SignalType;->WWAN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 88
    new-instance v5, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v7, "CDMA"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/verimatrix/vdc/Heartbeat$SignalType;->CDMA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 89
    new-instance v7, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v10, "SCDMA"

    const/16 v11, 0x11

    invoke-direct {v7, v10, v9, v11, v6}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/verimatrix/vdc/Heartbeat$SignalType;->SCDMA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 90
    new-instance v10, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v12, "EDGE"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v6, v8}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/verimatrix/vdc/Heartbeat$SignalType;->EDGE:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 91
    new-instance v12, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v14, "GPRS"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v4, v9}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/verimatrix/vdc/Heartbeat$SignalType;->GPRS:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 92
    new-instance v14, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v9, "LTE"

    const/4 v6, 0x7

    const/16 v4, 0xd

    invoke-direct {v14, v9, v6, v4, v13}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/verimatrix/vdc/Heartbeat$SignalType;->LTE:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 93
    new-instance v9, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v2, "HSDPA"

    const/16 v11, 0x8

    invoke-direct {v9, v2, v11, v11, v15}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/verimatrix/vdc/Heartbeat$SignalType;->HSDPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 94
    new-instance v2, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v4, "HSUPA"

    const/16 v15, 0x9

    invoke-direct {v2, v4, v15, v15, v6}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/verimatrix/vdc/Heartbeat$SignalType;->HSUPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 95
    new-instance v4, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v6, "HRPD"

    const/16 v13, 0xa

    const/16 v8, 0xe

    invoke-direct {v4, v6, v13, v8, v11}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/verimatrix/vdc/Heartbeat$SignalType;->HRPD:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 96
    new-instance v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v11, "UMTS"

    const/16 v8, 0xb

    const/4 v13, 0x3

    invoke-direct {v6, v11, v8, v13, v15}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;->UMTS:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 97
    new-instance v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v13, "EVD_0"

    const/16 v15, 0xc

    move-object/from16 v17, v6

    const/4 v6, 0x5

    const/16 v8, 0xa

    invoke-direct {v11, v13, v15, v6, v8}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;->EVD_0:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 98
    new-instance v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v8, "EVD_A"

    move-object/from16 v18, v11

    const/4 v11, 0x6

    const/16 v13, 0xb

    const/16 v15, 0xd

    invoke-direct {v6, v8, v15, v11, v13}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;->EVD_A:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 99
    new-instance v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v11, "EVD_B"

    const/16 v13, 0xc

    const/16 v15, 0xe

    invoke-direct {v8, v11, v15, v13, v13}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;->EVD_B:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 100
    new-instance v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v13, "RTT"

    const/16 v15, 0xf

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    const/4 v6, 0x7

    const/16 v8, 0xd

    invoke-direct {v11, v13, v15, v6, v8}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;->RTT:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 101
    new-instance v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v8, "HSPA"

    const/16 v13, 0x10

    move-object/from16 v21, v11

    const/16 v11, 0xa

    const/16 v15, 0xe

    invoke-direct {v6, v8, v13, v11, v15}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;->HSPA:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 102
    new-instance v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v11, "HSPAP"

    const/16 v13, 0xf

    const/16 v15, 0x11

    invoke-direct {v8, v11, v15, v13, v13}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;->HSPAP:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 103
    new-instance v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v13, "IDEN"

    const/16 v15, 0x12

    move-object/from16 v23, v6

    move-object/from16 v22, v8

    const/16 v6, 0xb

    const/16 v8, 0x10

    invoke-direct {v11, v13, v15, v6, v8}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/verimatrix/vdc/Heartbeat$SignalType;->IDEN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 104
    new-instance v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v13, "GSM"

    move-object/from16 v24, v11

    const/16 v11, 0x13

    invoke-direct {v6, v13, v11, v8, v15}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/verimatrix/vdc/Heartbeat$SignalType;->GSM:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 105
    new-instance v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const-string v13, "WLAN"

    move-object/from16 v25, v6

    const/16 v6, 0x14

    invoke-direct {v8, v13, v6, v15, v11}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/verimatrix/vdc/Heartbeat$SignalType;->WLAN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const/16 v13, 0x15

    new-array v13, v13, [Lcom/verimatrix/vdc/Heartbeat$SignalType;

    const/16 v16, 0x0

    aput-object v0, v13, v16

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v5, v13, v0

    const/4 v0, 0x4

    aput-object v7, v13, v0

    const/4 v0, 0x5

    aput-object v10, v13, v0

    const/4 v0, 0x6

    aput-object v12, v13, v0

    const/4 v0, 0x7

    aput-object v14, v13, v0

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v2, v13, v0

    const/16 v0, 0xa

    aput-object v4, v13, v0

    const/16 v0, 0xb

    aput-object v17, v13, v0

    const/16 v0, 0xc

    aput-object v18, v13, v0

    const/16 v0, 0xd

    aput-object v20, v13, v0

    const/16 v0, 0xe

    aput-object v19, v13, v0

    const/16 v0, 0xf

    aput-object v21, v13, v0

    const/16 v0, 0x10

    aput-object v23, v13, v0

    const/16 v0, 0x11

    aput-object v22, v13, v0

    aput-object v24, v13, v15

    aput-object v25, v13, v11

    aput-object v8, v13, v6

    .line 84
    sput-object v13, Lcom/verimatrix/vdc/Heartbeat$SignalType;->$VALUES:[Lcom/verimatrix/vdc/Heartbeat$SignalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const p1, 0x7fffffff

    .line 107
    iput p1, p0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->systemId:I

    .line 111
    iput p3, p0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->appId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2, p4}, Lcom/verimatrix/vdc/Heartbeat$SignalType;-><init>(Ljava/lang/String;II)V

    .line 116
    iput p3, p0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->systemId:I

    return-void
.end method

.method public static getSignalTypeId(I)I
    .locals 6

    .line 124
    sget-object v0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->UNKNOWN:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 125
    invoke-static {}, Lcom/verimatrix/vdc/Heartbeat$SignalType;->values()[Lcom/verimatrix/vdc/Heartbeat$SignalType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 126
    iget v5, v4, Lcom/verimatrix/vdc/Heartbeat$SignalType;->systemId:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/verimatrix/vdc/Heartbeat$SignalType;->getAppId()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Heartbeat$SignalType;
    .locals 1

    .line 84
    const-class v0, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Heartbeat$SignalType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Heartbeat$SignalType;
    .locals 1

    .line 84
    sget-object v0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->$VALUES:[Lcom/verimatrix/vdc/Heartbeat$SignalType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Heartbeat$SignalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Heartbeat$SignalType;

    return-object v0
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/verimatrix/vdc/Heartbeat$SignalType;->appId:I

    return v0
.end method
