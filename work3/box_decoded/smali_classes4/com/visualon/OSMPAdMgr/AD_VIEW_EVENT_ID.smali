.class final enum Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;
.super Ljava/lang/Enum;
.source "VOOSMPAdMgrImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_DURATION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_ERROR:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_LOADED:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_MUTE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_PAUSE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_POSITION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_SKIP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_AD_STOP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

.field public static final enum AD_VIEW_EVENT_MAX:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1860
    new-instance v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v1, "AD_VIEW_EVENT_AD_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_LOADED:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1861
    new-instance v1, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v3, "AD_VIEW_EVENT_AD_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1862
    new-instance v3, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v5, "AD_VIEW_EVENT_AD_STOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_STOP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1863
    new-instance v5, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v7, "AD_VIEW_EVENT_AD_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1864
    new-instance v7, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v9, "AD_VIEW_EVENT_AD_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_ERROR:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1865
    new-instance v9, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v11, "AD_VIEW_EVENT_AD_DURATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_DURATION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1866
    new-instance v11, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v13, "AD_VIEW_EVENT_AD_SKIP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_SKIP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1867
    new-instance v13, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v15, "AD_VIEW_EVENT_AD_POSITION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_POSITION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1868
    new-instance v15, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v14, "AD_VIEW_EVENT_AD_PAUSE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_PAUSE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1869
    new-instance v14, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v12, "AD_VIEW_EVENT_AD_MUTE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_MUTE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    .line 1870
    new-instance v12, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const-string v10, "AD_VIEW_EVENT_MAX"

    const/16 v8, 0xa

    const v6, 0x7fffffff

    invoke-direct {v12, v10, v8, v6}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_MAX:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    .line 1858
    sput-object v6, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1874
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1875
    iput p3, p0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;
    .locals 2

    const/4 v0, 0x0

    .line 1884
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1885
    invoke-static {}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1886
    invoke-static {}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1888
    :cond_1
    sget-object p0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_MAX:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;
    .locals 1

    .line 1858
    const-class v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;
    .locals 1

    .line 1858
    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1879
    iget v0, p0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->value:I

    return v0
.end method
