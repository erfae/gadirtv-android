.class public Lorg/bson/BsonElement;
.super Ljava/lang/Object;
.source "BsonElement.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Lorg/bson/BsonValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bson/BsonValue;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/BsonElement;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/bson/BsonElement;->value:Lorg/bson/BsonValue;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4d

    .line 2
    :cond_12
    check-cast p1, Lorg/bson/BsonElement;

    .line 3
    invoke-virtual {p0}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_2f

    :cond_29
    invoke-virtual {p1}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    :goto_2f
    return v1

    .line 4
    :cond_30
    invoke-virtual {p0}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_4b

    :cond_45
    invoke-virtual {p1}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object p1

    if-eqz p1, :cond_4c

    :goto_4b
    return v1

    :cond_4c
    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lorg/bson/BsonValue;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonElement;->value:Lorg/bson/BsonValue;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/bson/BsonElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lorg/bson/BsonElement;->getValue()Lorg/bson/BsonValue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_21
    add-int/2addr v0, v1

    return v0
.end method
