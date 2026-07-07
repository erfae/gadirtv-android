.class public final enum Lcom/verimatrix/vdc/Monitor$MetadataType1;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetadataType1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$MetadataType1;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum ALBUM:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum ARTIST:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum COUNTRY_OF_ORIGIN:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum EPISODE_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum EPISODE_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum GENRE:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum LANGUAGE:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum PARENTAL_RATING:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum PROGRAMME_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum RUNTIME:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum SERIES_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum SYNOPSIS:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum TRACK:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum TRACK_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

.field public static final enum URL:Lcom/verimatrix/vdc/Monitor$MetadataType1;


# instance fields
.field private final mandatory:Z

.field private final mandatoryB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 526
    new-instance v0, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v1, "PROGRAMME_LABEL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->PROGRAMME_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 527
    new-instance v1, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v4, "RUNTIME"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$MetadataType1;->RUNTIME:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 528
    new-instance v4, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v5, "COUNTRY_OF_ORIGIN"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lcom/verimatrix/vdc/Monitor$MetadataType1;->COUNTRY_OF_ORIGIN:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 529
    new-instance v5, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v7, "LANGUAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/verimatrix/vdc/Monitor$MetadataType1;->LANGUAGE:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 530
    new-instance v7, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v9, "GENRE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lcom/verimatrix/vdc/Monitor$MetadataType1;->GENRE:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 531
    new-instance v9, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v11, "SYNOPSIS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v9, Lcom/verimatrix/vdc/Monitor$MetadataType1;->SYNOPSIS:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 532
    new-instance v11, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v13, "PARENTAL_RATING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v11, Lcom/verimatrix/vdc/Monitor$MetadataType1;->PARENTAL_RATING:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 533
    new-instance v13, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v15, "SERIES_NUMBER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v13, Lcom/verimatrix/vdc/Monitor$MetadataType1;->SERIES_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 534
    new-instance v15, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v14, "EPISODE_NUMBER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v15, Lcom/verimatrix/vdc/Monitor$MetadataType1;->EPISODE_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 535
    new-instance v14, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v12, "EPISODE_LABEL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v14, Lcom/verimatrix/vdc/Monitor$MetadataType1;->EPISODE_LABEL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 536
    new-instance v12, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v10, "URL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v2, v2}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v12, Lcom/verimatrix/vdc/Monitor$MetadataType1;->URL:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 537
    new-instance v10, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v8, "ALBUM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v2, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$MetadataType1;->ALBUM:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 538
    new-instance v8, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v6, "ARTIST"

    move-object/from16 v16, v10

    const/16 v10, 0xc

    invoke-direct {v8, v6, v10, v2, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v8, Lcom/verimatrix/vdc/Monitor$MetadataType1;->ARTIST:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 539
    new-instance v6, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v10, "TRACK"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v10, v8, v2, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Lcom/verimatrix/vdc/Monitor$MetadataType1;->TRACK:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    .line 540
    new-instance v10, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const-string v8, "TRACK_NUMBER"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v10, v8, v6, v2, v3}, Lcom/verimatrix/vdc/Monitor$MetadataType1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v10, Lcom/verimatrix/vdc/Monitor$MetadataType1;->TRACK_NUMBER:Lcom/verimatrix/vdc/Monitor$MetadataType1;

    const/16 v8, 0xf

    new-array v8, v8, [Lcom/verimatrix/vdc/Monitor$MetadataType1;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    aput-object v10, v8, v6

    .line 525
    sput-object v8, Lcom/verimatrix/vdc/Monitor$MetadataType1;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 546
    iput-boolean p3, p0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->mandatory:Z

    .line 547
    iput-boolean p4, p0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->mandatoryB:Z

    return-void
.end method

.method public static containKey(Ljava/lang/String;)Z
    .locals 5

    .line 560
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->values()[Lcom/verimatrix/vdc/Monitor$MetadataType1;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 561
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->toString()Ljava/lang/String;

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 570
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 575
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 576
    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 578
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->values()[Lcom/verimatrix/vdc/Monitor$MetadataType1;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 579
    invoke-virtual {v6}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->toString()Ljava/lang/String;

    move-result-object v7

    .line 580
    invoke-virtual {v6}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->isMandatory()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 581
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 588
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->values()[Lcom/verimatrix/vdc/Monitor$MetadataType1;

    move-result-object p0

    array-length v0, p0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_5

    aget-object v5, p0, v4

    .line 589
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->toString()Ljava/lang/String;

    move-result-object v6

    .line 590
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Monitor$MetadataType1;->isMandatory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 591
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    :cond_5
    :goto_4
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$MetadataType1;
    .locals 1

    .line 525
    const-class v0, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$MetadataType1;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$MetadataType1;
    .locals 1

    .line 525
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->$VALUES:[Lcom/verimatrix/vdc/Monitor$MetadataType1;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$MetadataType1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$MetadataType1;

    return-object v0
.end method


# virtual methods
.method public isMandatory()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->mandatory:Z

    return v0
.end method

.method public isMandatoryB()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Monitor$MetadataType1;->mandatoryB:Z

    return v0
.end method
