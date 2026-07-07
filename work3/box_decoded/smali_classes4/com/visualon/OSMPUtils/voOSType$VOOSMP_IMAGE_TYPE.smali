.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
.super Ljava/lang/Enum;
.source "voOSType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_IMAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_BMP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_JPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_PNG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGB24:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGB565:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

.field public static final enum VOOSMP_IMAGE_Unused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1993
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v1, "VOOSMP_IMAGE_Unused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_Unused:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1994
    new-instance v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v3, "VOOSMP_IMAGE_RGB565"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB565:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1995
    new-instance v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v5, "VOOSMP_IMAGE_RGB24"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGB24:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1996
    new-instance v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v7, "VOOSMP_IMAGE_RGBA32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_RGBA32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1997
    new-instance v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v9, "VOOSMP_IMAGE_ARGB32"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_ARGB32:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1998
    new-instance v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v11, "VOOSMP_IMAGE_JPEG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_JPEG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 1999
    new-instance v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v13, "VOOSMP_IMAGE_BMP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_BMP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 2000
    new-instance v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v15, "VOOSMP_IMAGE_PNG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_PNG:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    .line 2001
    new-instance v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const-string v14, "VOOSMP_IMAGE_MAX"

    const/16 v12, 0x8

    const v10, 0x7fffffff

    invoke-direct {v15, v14, v12, v10}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 1991
    sput-object v10, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2006
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2007
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .line 2017
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 2018
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 2020
    :cond_0
    sget-object p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->VOOSMP_IMAGE_MAX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .line 1991
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;
    .locals 1

    .line 1991
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2012
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_IMAGE_TYPE;->value:I

    return v0
.end method
