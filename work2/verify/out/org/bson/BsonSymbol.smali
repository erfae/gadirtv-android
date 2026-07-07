.class public Lorg/bson/BsonSymbol;
.super Lorg/bson/BsonValue;
.source "BsonSymbol.java"


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonValue;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_20

    .line 2
    :cond_12
    check-cast p1, Lorg/bson/BsonSymbol;

    .line 3
    iget-object v2, p0, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    iget-object p1, p1, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v1

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .registers 2

    sget-object v0, Lorg/bson/BsonType;->SYMBOL:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonSymbol;->symbol:Ljava/lang/String;

    return-object v0
.end method
