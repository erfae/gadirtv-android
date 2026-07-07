.class public final enum Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;
.super Ljava/lang/Enum;
.source "VOOSMPAdType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_APP_NOTIFICATION_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_EXIT_FULLSCREEN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_FULLSCREEN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_MUTE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_UNMUTE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

.field public static final enum VO_OSMP_APP_NOTIFICATION_VIEW_SIZE_CHANGE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 82
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v1, "VO_OSMP_APP_NOTIFICATION_MUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_MUTE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 85
    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v3, "VO_OSMP_APP_NOTIFICATION_UNMUTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_UNMUTE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 88
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v5, "VO_OSMP_APP_NOTIFICATION_FULLSCREEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_FULLSCREEN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 91
    new-instance v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v7, "VO_OSMP_APP_NOTIFICATION_EXIT_FULLSCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_EXIT_FULLSCREEN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 94
    new-instance v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v9, "VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 96
    new-instance v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v11, "VO_OSMP_APP_NOTIFICATION_VIEW_SIZE_CHANGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_VIEW_SIZE_CHANGE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    .line 98
    new-instance v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const-string v13, "VO_OSMP_APP_NOTIFICATION_ID_MAX"

    const/4 v14, 0x6

    const v15, 0x7fffffff

    invoke-direct {v11, v13, v14, v15}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 79
    sput-object v13, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;
    .locals 6

    .line 113
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    move-result-object v0

    .line 114
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 115
    aget-object v1, v0, p0

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 116
    aget-object p0, v0, p0

    return-object p0

    .line 117
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 118
    invoke-virtual {v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->getValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VO_OSMP_APP_NOTIFICATION_ID does not match. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdType"

    .line 121
    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-object p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_ID_MAX:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;
    .locals 1

    .line 79
    const-class v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;
    .locals 1

    .line 79
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->$VALUES:[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    invoke-virtual {v0}, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->mValue:I

    return v0
.end method
