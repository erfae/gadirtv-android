.class public final enum Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
.super Ljava/lang/Enum;
.source "VOCommonPlayerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VO_OSMP_SRC_RTSP_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field public static final enum VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

.field private static final values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 686
    new-instance v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v1, "VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_CONNECT_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 689
    new-instance v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v4, "VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_DESCRIBE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 692
    new-instance v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v6, "VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SETUP_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 695
    new-instance v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v8, "VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PLAY_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 698
    new-instance v8, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v10, "VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_PAUSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 701
    new-instance v10, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v12, "VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_OPTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 704
    new-instance v12, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v14, "VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_SOCKET_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 707
    new-instance v14, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v13, "VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_HTTP_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 710
    new-instance v13, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v15, "VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_URL_EXPIRED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 713
    new-instance v15, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const-string v11, "VO_OSMP_SRC_RTSP_ERROR_MAX"

    const/4 v7, -0x1

    invoke-direct {v15, v11, v9, v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    const/16 v7, 0xa

    new-array v7, v7, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    const/4 v0, 0x3

    aput-object v6, v7, v0

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v10, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    aput-object v15, v7, v9

    .line 683
    sput-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    .line 715
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 720
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 721
    iput p3, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 731
    :goto_0
    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->values:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 733
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 734
    aget-object p0, v2, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VO_OSMP_SRC_RTSP_ERROR isn\'t match. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VOCommonPlayerListener"

    invoke-static {v1, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    sget-object p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->VO_OSMP_SRC_RTSP_ERROR_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 1

    .line 683
    const-class v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;
    .locals 1

    .line 683
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->$VALUES:[Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    invoke-virtual {v0}, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_RTSP_ERROR;->value:I

    return v0
.end method
