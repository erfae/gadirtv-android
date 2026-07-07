.class Lcom/thebuzzmedia/sjxp/XMLParser$Location;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thebuzzmedia/sjxp/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Location"
.end annotation


# static fields
.field private static final HASH_CODE_CACHE_SIZE:I = 0x200


# instance fields
.field private hashCode:I

.field private hashCodeCache:[Ljava/lang/Integer;

.field private lengthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/thebuzzmedia/sjxp/XMLParser;


# direct methods
.method public constructor <init>(Lcom/thebuzzmedia/sjxp/XMLParser;)V
    .locals 1

    .line 865
    iput-object p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->this$0:Lcom/thebuzzmedia/sjxp/XMLParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 866
    iput p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    const/16 p1, 0x200

    new-array p1, p1, [Ljava/lang/Integer;

    .line 867
    iput-object p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCodeCache:[Ljava/lang/Integer;

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    .line 870
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->lengthList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 964
    iput v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    const/16 v1, 0x200

    new-array v1, v1, [Ljava/lang/Integer;

    .line 965
    iput-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCodeCache:[Ljava/lang/Integer;

    .line 967
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 968
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->lengthList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCachedHashCode()Ljava/lang/Integer;
    .locals 4

    .line 930
    invoke-virtual {p0}, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode()I

    .line 933
    iget v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCodeCache:[Ljava/lang/Integer;

    array-length v2, v1

    rem-int v2, v0, v2

    if-gez v2, :cond_0

    neg-int v2, v2

    .line 940
    :cond_0
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    .line 944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    .line 954
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 955
    iget v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    :goto_0
    return-object v3
.end method

.method public hashCode()I
    .locals 4

    .line 892
    iget v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 893
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 894
    iget v2, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_0
    iget v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    return v0
.end method

.method public pop()V
    .locals 2

    const/4 v0, 0x0

    .line 1014
    iput v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    .line 1017
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->lengthList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1020
    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 984
    iput v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->hashCode:I

    .line 987
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->lengthList:Ljava/util/List;

    iget-object v1, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 993
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 997
    :cond_0
    iget-object p2, p0, Lcom/thebuzzmedia/sjxp/XMLParser$Location;->path:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
