.class public final enum Lcom/verimatrix/vdc/Monitor$MetadataType2;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetadataType2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$MetadataType2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType2;

.field public static final enum EPG_DIGITS:Lcom/verimatrix/vdc/Monitor$MetadataType2;

.field public static final enum FULL_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType2;

.field public static final enum SHORT_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType2;


# instance fields
.field private final mandatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 606
    new-instance v0, Lcom/verimatrix/vdc/Monitor$MetadataType2;

    const-string v1, "FULL_LABEL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$MetadataType2;->FULL_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType2;

    .line 607
    new-instance v1, Lcom/verimatrix/vdc/Monitor$MetadataType2;

    const-string v4, "SHORT_LABEL"

    invoke-direct {v1, v4, v3, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$MetadataType2;->SHORT_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType2;

    .line 608
    new-instance v4, Lcom/verimatrix/vdc/Monitor$MetadataType2;

    const-string v5, "EPG_DIGITS"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType2;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$MetadataType2;->EPG_DIGITS:Lcom/verimatrix/vdc/Monitor$MetadataType2;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/Monitor$MetadataType2;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    .line 605
    sput-object v5, Lcom/verimatrix/vdc/Monitor$MetadataType2;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 612
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 613
    iput-boolean p3, p0, Lcom/verimatrix/vdc/Monitor$MetadataType2;->mandatory:Z

    return-void
.end method

.method public static containKey(Ljava/lang/String;)Z
    .locals 5

    .line 622
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->values()[Lcom/verimatrix/vdc/Monitor$MetadataType2;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 623
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static hasMandatoryFields(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 632
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 634
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->values()[Lcom/verimatrix/vdc/Monitor$MetadataType2;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 635
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->toString()Ljava/lang/String;

    move-result-object v6

    .line 636
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Monitor$MetadataType2;->isMandatory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 638
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$MetadataType2;
    .locals 1

    .line 605
    const-class v0, Lcom/verimatrix/vdc/Monitor$MetadataType2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$MetadataType2;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$MetadataType2;
    .locals 1

    .line 605
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MetadataType2;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType2;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$MetadataType2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$MetadataType2;

    return-object v0
.end method


# virtual methods
.method public isMandatory()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Monitor$MetadataType2;->mandatory:Z

    return v0
.end method
