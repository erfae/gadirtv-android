.class public final enum Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
.super Ljava/lang/Enum;
.source "VOOSMPType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOOSMPType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_PLAYLIST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_DASH_MANIFEST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_HLS_MASTER_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_HLS_MEDIA_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_PLAYLIST_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_SS_MANIFEST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field public static final enum VO_OSMP_SRC_UNKNOWN_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 198
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v1, "VO_OSMP_SRC_UNKNOWN_PLAYLIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_UNKNOWN_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 200
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v3, "VO_OSMP_SRC_HLS_MASTER_PLAYLIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_HLS_MASTER_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 202
    new-instance v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v5, "VO_OSMP_SRC_HLS_MEDIA_PLAYLIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_HLS_MEDIA_PLAYLIST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 204
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v7, "VO_OSMP_SRC_SS_MANIFEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_SS_MANIFEST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 206
    new-instance v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v9, "VO_OSMP_SRC_DASH_MANIFEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_DASH_MANIFEST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 208
    new-instance v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const-string v11, "VO_OSMP_SRC_PLAYLIST_TYPE_MAX"

    const/4 v12, 0x5

    const v13, 0x7fffffff

    invoke-direct {v9, v11, v12, v13}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_PLAYLIST_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 195
    sput-object v11, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    .line 210
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->values:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 227
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 228
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_SRC_PLAYLIST_TYPE does not match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPType"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    sget-object p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->VO_OSMP_SRC_PLAYLIST_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .line 195
    const-class v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;
    .locals 1

    .line 195
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->$VALUES:[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->value:I

    return v0
.end method
