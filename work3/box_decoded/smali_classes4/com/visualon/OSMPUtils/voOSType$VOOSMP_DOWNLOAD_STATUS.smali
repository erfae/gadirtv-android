.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_DOWNLOAD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

.field public static final enum VOOSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

.field public static final enum VOOSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

.field public static final enum VOOSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

.field public static final enum VOOSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1586
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    const-string v1, "VOOSMP_DOWNLOAD_STALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->VOOSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    .line 1588
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    const-string v3, "VOOSMP_DOWNLOAD_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->VOOSMP_DOWNLOAD_PROGRESS:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    .line 1590
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    const-string v5, "VOOSMP_DOWNLOAD_SUSPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->VOOSMP_DOWNLOAD_SUSPEND:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    .line 1592
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    const-string v7, "VOOSMP_DOWNLOAD_MAX"

    const/4 v8, 0x3

    const v9, 0x7fffffff

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->VOOSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1583
    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1597
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1598
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;
    .locals 1

    .line 1608
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1609
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 1611
    :cond_0
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->VOOSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;
    .locals 1

    .line 1583
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;
    .locals 1

    .line 1583
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1603
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DOWNLOAD_STATUS;->value:I

    return v0
.end method
