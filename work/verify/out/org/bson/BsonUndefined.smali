.class public final Lorg/bson/BsonUndefined;
.super Lorg/bson/BsonValue;
.source "BsonUndefined.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bson/BsonValue;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_10

    const-class v1, Lorg/bson/BsonUndefined;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v1, p1, :cond_f

    goto :goto_10

    :cond_f
    return v0

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .registers 2

    sget-object v0, Lorg/bson/BsonType;->UNDEFINED:Lorg/bson/BsonType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
