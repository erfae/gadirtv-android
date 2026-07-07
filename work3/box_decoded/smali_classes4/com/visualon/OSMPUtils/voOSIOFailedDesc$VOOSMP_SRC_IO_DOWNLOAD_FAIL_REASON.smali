.class public final enum Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
.super Ljava/lang/Enum;
.source "voOSIOFailedDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSIOFailedDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

.field public static final enum VOOSMP_IO_HTTP_SERVER_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 28
    new-instance v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v1, "VOOSMP_IO_HTTP_CONNECT_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CONNECT_FAILED:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 31
    new-instance v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v3, "VOOSMP_IO_HTTP_INVALID_RESPONSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_INVALID_RESPONSE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 34
    new-instance v3, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v5, "VOOSMP_IO_HTTP_CLIENT_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_CLIENT_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 37
    new-instance v5, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v7, "VOOSMP_IO_HTTP_SERVER_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_SERVER_ERROR:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    .line 40
    new-instance v7, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const-string v9, "VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE"

    const/4 v10, 0x4

    const v11, 0x7fffffff

    invoke-direct {v7, v9, v10, v11}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 25
    sput-object v9, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->$VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 2

    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 58
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 59
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VO_OSMP_CB_EVENT_ID isn\'t match. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "@@@voOSIOFailedDesc"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->VOOSMP_IO_HTTP_FAIL_REASON_MAX_VALUE:Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .line 25
    const-class v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .line 25
    sget-object v0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->$VALUES:[Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->value:I

    return v0
.end method
