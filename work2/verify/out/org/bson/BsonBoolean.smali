.class public final Lorg/bson/BsonBoolean;
.super Lorg/bson/BsonValue;
.source "BsonBoolean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bson/BsonValue;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/BsonBoolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final FALSE:Lorg/bson/BsonBoolean;

.field public static final TRUE:Lorg/bson/BsonBoolean;


# instance fields
.field private final value:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lorg/bson/BsonBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bson/BsonBoolean;-><init>(Z)V

    sput-object v0, Lorg/bson/BsonBoolean;->TRUE:Lorg/bson/BsonBoolean;

    .line 2
    new-instance v0, Lorg/bson/BsonBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bson/BsonBoolean;-><init>(Z)V

    sput-object v0, Lorg/bson/BsonBoolean;->FALSE:Lorg/bson/BsonBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonValue;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/bson/BsonBoolean;->value:Z

    return-void
.end method

.method public static valueOf(Z)Lorg/bson/BsonBoolean;
    .registers 1

    if-eqz p0, :cond_5

    sget-object p0, Lorg/bson/BsonBoolean;->TRUE:Lorg/bson/BsonBoolean;

    goto :goto_7

    :cond_5
    sget-object p0, Lorg/bson/BsonBoolean;->FALSE:Lorg/bson/BsonBoolean;

    :goto_7
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lorg/bson/BsonBoolean;

    invoke-virtual {p0, p1}, Lorg/bson/BsonBoolean;->compareTo(Lorg/bson/BsonBoolean;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bson/BsonBoolean;)I
    .registers 3

    .line 2
    iget-boolean v0, p0, Lorg/bson/BsonBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p1, p1, Lorg/bson/BsonBoolean;->value:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 1
    const-class v2, Lorg/bson/BsonBoolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_1a

    .line 2
    :cond_10
    check-cast p1, Lorg/bson/BsonBoolean;

    .line 3
    iget-boolean v2, p0, Lorg/bson/BsonBoolean;->value:Z

    iget-boolean p1, p1, Lorg/bson/BsonBoolean;->value:Z

    if-eq v2, p1, :cond_19

    return v1

    :cond_19
    return v0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .registers 2

    sget-object v0, Lorg/bson/BsonType;->BOOLEAN:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bson/BsonBoolean;->value:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lorg/bson/BsonBoolean;->value:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "BsonBoolean{value="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lorg/bson/BsonBoolean;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
