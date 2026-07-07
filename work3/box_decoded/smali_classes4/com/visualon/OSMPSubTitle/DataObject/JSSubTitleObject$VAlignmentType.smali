.class public final enum Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
.super Ljava/lang/Enum;
.source "JSSubTitleObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VAlignmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

.field public static final enum BOTTOM:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

.field public static final enum CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

.field public static final enum NONE:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

.field public static final enum TOP:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 53
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->TOP:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    .line 54
    new-instance v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->BOTTOM:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    .line 55
    new-instance v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    .line 56
    new-instance v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->NONE:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
    .locals 2

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 71
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 72
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    sget-object p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
    .locals 1

    .line 52
    const-class v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    return-object p0
.end method

.method public static values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;
    .locals 1

    .line 52
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$VAlignmentType;->value:I

    return v0
.end method
