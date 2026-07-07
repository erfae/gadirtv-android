.class public final enum Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;
.super Ljava/lang/Enum;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOAC_EVENT_SUBTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_CPU:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_CPULoad:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_Connection:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_Location:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum VOAC_Device_MemoryUsage:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_OS:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_Power:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_ScreenResolution:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_Threads:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Device_Type:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_INVALID_SUBTYPE:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

.field public static final enum VOAC_Player_AppName:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 699
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v1, "VOAC_Player_AppName"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_AppName:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 702
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v3, "VOAC_Device_Type"

    const/4 v4, 0x1

    const/16 v5, 0xc8

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Type:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 704
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v5, "VOAC_Device_CPU"

    const/4 v6, 0x2

    const/16 v7, 0xc9

    invoke-direct {v3, v5, v6, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_CPU:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 706
    new-instance v5, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v7, "VOAC_Device_CPULoad"

    const/4 v8, 0x3

    const/16 v9, 0xca

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_CPULoad:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 708
    new-instance v7, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v9, "VOAC_Device_MemoryUsage"

    const/4 v10, 0x4

    const/16 v11, 0xcb

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_MemoryUsage:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 710
    new-instance v9, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v11, "VOAC_Device_Threads"

    const/4 v12, 0x5

    const/16 v13, 0xcc

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Threads:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 712
    new-instance v11, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v13, "VOAC_Device_OS"

    const/4 v14, 0x6

    const/16 v15, 0xcd

    invoke-direct {v11, v13, v14, v15}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_OS:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 714
    new-instance v13, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v15, "VOAC_Device_Connection"

    const/4 v14, 0x7

    const/16 v12, 0xce

    invoke-direct {v13, v15, v14, v12}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Connection:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 717
    new-instance v12, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v15, "VOAC_Device_Location"

    const/16 v14, 0x8

    const/16 v10, 0xcf

    invoke-direct {v12, v15, v14, v10}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Location:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 720
    new-instance v10, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v15, "VOAC_Device_Power"

    const/16 v14, 0x9

    const/16 v8, 0xd0

    invoke-direct {v10, v15, v14, v8}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Power:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 722
    new-instance v8, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v15, "VOAC_Device_ScreenResolution"

    const/16 v14, 0xa

    const/16 v6, 0xd1

    invoke-direct {v8, v15, v14, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_ScreenResolution:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    .line 724
    new-instance v6, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const-string v15, "VOAC_INVALID_SUBTYPE"

    const/16 v14, 0xb

    const/4 v4, -0x1

    invoke-direct {v6, v15, v14, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_INVALID_SUBTYPE:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 696
    sput-object v4, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 729
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 730
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;
    .locals 1

    .line 696
    const-class v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;
    .locals 1

    .line 696
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->$VALUES:[Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 735
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->value:I

    return v0
.end method
