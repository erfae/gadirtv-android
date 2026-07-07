.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_MODULE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_DRM_VENDOR_A:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

.field public static final enum VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 2063
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v1, "VOOSMP_MODULE_TYPE_SDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 2064
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v3, "VOOSMP_MODULE_TYPE_DRM_VENDOR_A"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_DRM_VENDOR_A:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 2065
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v5, "VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_SEI_POST_PROCESS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    .line 2066
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const-string v7, "VOOSMP_MODULE_TYPE_MAX"

    const/4 v8, 0x3

    const v9, 0x7fffffff

    invoke-direct {v5, v7, v8, v9}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2061
    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2070
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2071
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 2

    const/4 v0, 0x0

    .line 2081
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2083
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 2084
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2087
    :cond_1
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->VOOSMP_MODULE_TYPE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 1

    .line 2061
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;
    .locals 1

    .line 2061
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2076
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_MODULE_TYPE;->value:I

    return v0
.end method
