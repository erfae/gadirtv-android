.class public Lorg/bson/codecs/PatternCodec;
.super Ljava/lang/Object;
.source "PatternCodec.java"

# interfaces
.implements Lorg/bson/codecs/Codec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/codecs/PatternCodec$RegexFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/Codec<",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final GLOBAL_FLAG:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOptionsAsInt(Lorg/bson/BsonRegularExpression;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/bson/BsonRegularExpression;->getOptions()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_52

    .line 3
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/bson/codecs/PatternCodec$RegexFlag;->getByCharacter(C)Lorg/bson/codecs/PatternCodec$RegexFlag;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 6
    # getter for: Lorg/bson/codecs/PatternCodec$RegexFlag;->javaFlag:I
    invoke-static {v2}, Lorg/bson/codecs/PatternCodec$RegexFlag;->access$000(Lorg/bson/codecs/PatternCodec$RegexFlag;)I

    move-result v3

    or-int/2addr v1, v3

    .line 7
    # getter for: Lorg/bson/codecs/PatternCodec$RegexFlag;->unsupported:Ljava/lang/String;
    invoke-static {v2}, Lorg/bson/codecs/PatternCodec$RegexFlag;->access$200(Lorg/bson/codecs/PatternCodec$RegexFlag;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 8
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unrecognized flag ["

    .line 9
    invoke-static {v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    return v1

    :cond_52
    :goto_52
    return v0
.end method

.method private static getOptionsAsString(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-static {}, Lorg/bson/codecs/PatternCodec$RegexFlag;->values()[Lorg/bson/codecs/PatternCodec$RegexFlag;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 4
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->flags()I

    move-result v6

    # getter for: Lorg/bson/codecs/PatternCodec$RegexFlag;->javaFlag:I
    invoke-static {v5}, Lorg/bson/codecs/PatternCodec$RegexFlag;->access$000(Lorg/bson/codecs/PatternCodec$RegexFlag;)I

    move-result v7

    and-int/2addr v6, v7

    if-lez v6, :cond_2a

    .line 5
    # getter for: Lorg/bson/codecs/PatternCodec$RegexFlag;->flagChar:C
    invoke-static {v5}, Lorg/bson/codecs/PatternCodec$RegexFlag;->access$100(Lorg/bson/codecs/PatternCodec$RegexFlag;)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    # getter for: Lorg/bson/codecs/PatternCodec$RegexFlag;->javaFlag:I
    invoke-static {v5}, Lorg/bson/codecs/PatternCodec$RegexFlag;->access$000(Lorg/bson/codecs/PatternCodec$RegexFlag;)I

    move-result v5

    sub-int/2addr v0, v5

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_2d
    if-gtz v0, :cond_34

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "some flags could not be recognized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bson/codecs/PatternCodec;->decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/bson/BsonReader;Lorg/bson/codecs/DecoderContext;)Ljava/util/regex/Pattern;
    .registers 3

    .line 2
    invoke-interface {p1}, Lorg/bson/BsonReader;->readRegularExpression()Lorg/bson/BsonRegularExpression;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/bson/BsonRegularExpression;->getPattern()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lorg/bson/codecs/PatternCodec;->getOptionsAsInt(Lorg/bson/BsonRegularExpression;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/bson/BsonWriter;Ljava/lang/Object;Lorg/bson/codecs/EncoderContext;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bson/codecs/PatternCodec;->encode(Lorg/bson/BsonWriter;Ljava/util/regex/Pattern;Lorg/bson/codecs/EncoderContext;)V

    return-void
.end method

.method public encode(Lorg/bson/BsonWriter;Ljava/util/regex/Pattern;Lorg/bson/codecs/EncoderContext;)V
    .registers 5

    .line 2
    new-instance p3, Lorg/bson/BsonRegularExpression;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/bson/codecs/PatternCodec;->getOptionsAsString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lorg/bson/BsonRegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lorg/bson/BsonWriter;->writeRegularExpression(Lorg/bson/BsonRegularExpression;)V

    return-void
.end method

.method public getEncoderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/regex/Pattern;

    return-object v0
.end method
