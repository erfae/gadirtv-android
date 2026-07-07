.class public final enum Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
.super Ljava/lang/Enum;
.source "voOSHDMIDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field public static final enum StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v1, "NoHDMI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v3, "Motorola_V2_3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v5, "SE_LTs"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v5, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v7, "HTC_PC36100"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v7, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v9, "LG_P920"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v9, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v11, "SHARP_SHs"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v11, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v13, "StandardVersion3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    new-instance v13, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const-string v15, "StandardVersion4"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 24
    sput-object v15, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->$VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
    .locals 1

    .line 24
    const-class v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;
    .locals 1

    .line 24
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->$VALUES:[Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    return-object v0
.end method
