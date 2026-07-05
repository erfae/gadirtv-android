.class public final Lorg/bson/BsonInt64;
.super Lorg/bson/BsonNumber;
.source "BsonInt64.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bson/BsonNumber;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/BsonInt64;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonNumber;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/bson/BsonInt64;->value:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lorg/bson/BsonInt64;

    invoke-virtual {p0, p1}, Lorg/bson/BsonInt64;->compareTo(Lorg/bson/BsonInt64;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bson/BsonInt64;)I
    .registers 6

    .line 2
    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    iget-wide v2, p1, Lorg/bson/BsonInt64;->value:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_a

    const/4 p1, -0x1

    goto :goto_11

    :cond_a
    cmp-long p1, v0, v2

    if-nez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method

.method public decimal128Value()Lorg/bson/types/Decimal128;
    .registers 4

    new-instance v0, Lorg/bson/types/Decimal128;

    iget-wide v1, p0, Lorg/bson/BsonInt64;->value:J

    invoke-direct {v0, v1, v2}, Lorg/bson/types/Decimal128;-><init>(J)V

    return-object v0
.end method

.method public doubleValue()D
    .registers 3

    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 1
    const-class v2, Lorg/bson/BsonInt64;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_1c

    .line 2
    :cond_10
    check-cast p1, Lorg/bson/BsonInt64;

    .line 3
    iget-wide v2, p0, Lorg/bson/BsonInt64;->value:J

    iget-wide v4, p1, Lorg/bson/BsonInt64;->value:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .registers 2

    sget-object v0, Lorg/bson/BsonType;->INT64:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getValue()J
    .registers 3

    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public intValue()I
    .registers 3

    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .registers 3

    iget-wide v0, p0, Lorg/bson/BsonInt64;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "BsonInt64{value="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lorg/bson/BsonInt64;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
