.class final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;
.super Ljava/lang/Enum;
.source "VOOSMPAdMgrImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ADSMGR_EVENT_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_ABORT_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_CHECK_FORCE_VPAID:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_CHECK_VPAID_CAPABILITY:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_CLEAR_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_LOAD_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_MUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_PAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_RESUME_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_SKIP_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_START_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_SUSPEND_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_UNMUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_UNPAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

.field public static final enum ADSMGR_EVENT_VIEW_SIZE_CHANGED:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1672
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v1, "ADSMGR_EVENT_LOAD_AD_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_LOAD_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1673
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v3, "ADSMGR_EVENT_START_AD_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_START_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1674
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v5, "ADSMGR_EVENT_ABORT_AD_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_ABORT_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1675
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v7, "ADSMGR_EVENT_CLEAR_AD_VIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_CLEAR_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1676
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v9, "ADSMGR_EVENT_SUSPEND_AD_VIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_SUSPEND_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1677
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v11, "ADSMGR_EVENT_RESUME_AD_VIEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_RESUME_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1678
    new-instance v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v13, "ADSMGR_EVENT_MUTE_AD_VIEW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_MUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1679
    new-instance v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v15, "ADSMGR_EVENT_UNMUTE_AD_VIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_UNMUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1680
    new-instance v15, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v14, "ADSMGR_EVENT_PAUSE_AD_VIEW"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_PAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1681
    new-instance v14, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v12, "ADSMGR_EVENT_UNPAUSE_AD_VIEW"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_UNPAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1682
    new-instance v12, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v10, "ADSMGR_EVENT_SKIP_AD_VIEW"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_SKIP_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1683
    new-instance v10, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v8, "ADSMGR_EVENT_CHECK_VPAID_CAPABILITY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_CHECK_VPAID_CAPABILITY:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1684
    new-instance v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v6, "ADSMGR_EVENT_CHECK_FORCE_VPAID"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_CHECK_FORCE_VPAID:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1685
    new-instance v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v4, "ADSMGR_EVENT_VIEW_SIZE_CHANGED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_VIEW_SIZE_CHANGED:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    .line 1686
    new-instance v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const-string v2, "ADSMGR_EVENT_MAX"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    move-object/from16 v17, v8

    const v8, 0x7fffffff

    invoke-direct {v4, v2, v6, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    aput-object v4, v2, v6

    .line 1670
    sput-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1690
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1691
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;
    .locals 2

    const/4 v0, 0x0

    .line 1700
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1701
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1702
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1704
    :cond_1
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;
    .locals 1

    .line 1670
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;
    .locals 1

    .line 1670
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1695
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->value:I

    return v0
.end method
