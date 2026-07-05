.class public final Lorg/bson/types/BSONTimestamp;
.super Ljava/lang/Object;
.source "BSONTimestamp.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/BSONTimestamp;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2d5bfbac5b0cc2d0L


# instance fields
.field private final inc:I

.field private final time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/bson/types/BSONTimestamp;->inc:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/bson/types/BSONTimestamp;->time:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bson/types/BSONTimestamp;->time:Ljava/util/Date;

    .line 6
    iput p2, p0, Lorg/bson/types/BSONTimestamp;->inc:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lorg/bson/types/BSONTimestamp;

    invoke-virtual {p0, p1}, Lorg/bson/types/BSONTimestamp;->compareTo(Lorg/bson/types/BSONTimestamp;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bson/types/BSONTimestamp;)I
    .registers 4

    .line 2
    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v0

    invoke-virtual {p1}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 3
    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v0

    invoke-virtual {p1}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result p1

    :goto_12
    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_14
    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getInc()I

    move-result v0

    invoke-virtual {p1}, Lorg/bson/types/BSONTimestamp;->getInc()I

    move-result p1

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lorg/bson/types/BSONTimestamp;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 2
    check-cast p1, Lorg/bson/types/BSONTimestamp;

    .line 3
    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v1

    invoke-virtual {p1}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v3

    if-ne v1, v3, :cond_20

    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getInc()I

    move-result v1

    invoke-virtual {p1}, Lorg/bson/types/BSONTimestamp;->getInc()I

    move-result p1

    if-ne v1, p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    return v2
.end method

.method public getInc()I
    .registers 2

    iget v0, p0, Lorg/bson/types/BSONTimestamp;->inc:I

    return v0
.end method

.method public getTime()I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/bson/types/BSONTimestamp;->time:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lorg/bson/types/BSONTimestamp;->inc:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lorg/bson/types/BSONTimestamp;->getTime()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TS time:"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bson/types/BSONTimestamp;->time:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bson/types/BSONTimestamp;->inc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
