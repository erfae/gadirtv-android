.class final enum Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
.super Ljava/lang/Enum;
.source "voLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FileLevelStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

.field public static final enum LOGFORUNKNOWN:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

.field public static final enum LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

.field public static final enum LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v1, "LOGFORV2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    .line 46
    new-instance v1, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v3, "LOGFORV1"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    .line 47
    new-instance v3, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v5, "LOGFORUNKNOWN"

    const/4 v6, 0x2

    const v7, 0x7fffffff

    invoke-direct {v3, v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORUNKNOWN:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 43
    sput-object v5, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->$VALUES:[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
    .locals 2

    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->values()[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 65
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->values()[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 66
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->values()[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORUNKNOWN:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
    .locals 1

    .line 43
    const-class v0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
    .locals 1

    .line 43
    sget-object v0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->$VALUES:[Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->value:I

    return v0
.end method
