.class public final Lorg/bson/BsonRegularExpression;
.super Lorg/bson/BsonValue;
.source "BsonRegularExpression.java"


# instance fields
.field private final options:Ljava/lang/String;

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bson/BsonValue;-><init>()V

    const-string v0, "pattern"

    .line 2
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lorg/bson/BsonRegularExpression;->sortOptionCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    return-void
.end method

.method private sortOptionCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lorg/bson/BsonRegularExpression;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/bson/BsonRegularExpression;

    .line 3
    iget-object v2, p0, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    iget-object v3, p1, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    iget-object p1, p1, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getBsonType()Lorg/bson/BsonType;
    .locals 1

    sget-object v0, Lorg/bson/BsonType;->REGULAR_EXPRESSION:Lorg/bson/BsonType;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "BsonRegularExpression{pattern=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bson/BsonRegularExpression;->pattern:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", options=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lorg/bson/BsonRegularExpression;->options:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
