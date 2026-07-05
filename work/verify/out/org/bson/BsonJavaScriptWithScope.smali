.class public Lorg/bson/BsonJavaScriptWithScope;
.super Lorg/bson/BsonValue;
.source "BsonJavaScriptWithScope.java"


# instance fields
.field private final code:Ljava/lang/String;

.field private final scope:Lorg/bson/BsonDocument;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bson/BsonDocument;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonValue;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 2
    iput-object p1, p0, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    return-void

    .line 4
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scope can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "code can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clone(Lorg/bson/BsonJavaScriptWithScope;)Lorg/bson/BsonJavaScriptWithScope;
    .registers 3

    new-instance v0, Lorg/bson/BsonJavaScriptWithScope;

    iget-object v1, p0, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    iget-object p0, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    invoke-virtual {p0}, Lorg/bson/BsonDocument;->clone()Lorg/bson/BsonDocument;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bson/BsonJavaScriptWithScope;-><init>(Ljava/lang/String;Lorg/bson/BsonDocument;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 2
    :cond_12
    check-cast p1, Lorg/bson/BsonJavaScriptWithScope;

    .line 3
    iget-object v2, p0, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    iget-object v3, p1, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    iget-object p1, p1, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    invoke-virtual {v2, p1}, Lorg/bson/BsonDocument;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .registers 2

    sget-object v0, Lorg/bson/BsonType;->JAVASCRIPT_WITH_SCOPE:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lorg/bson/BsonDocument;
    .registers 2

    iget-object v0, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/BsonJavaScriptWithScope;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    invoke-virtual {v1}, Lorg/bson/BsonDocument;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "BsonJavaScriptWithScope{code="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bson/BsonJavaScriptWithScope;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bson/BsonJavaScriptWithScope;->scope:Lorg/bson/BsonDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
