.class public final Lorg/bson/json/JsonWriterSettings$Builder;
.super Ljava/lang/Object;
.source "JsonWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/JsonWriterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private binaryConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonBinary;",
            ">;"
        }
    .end annotation
.end field

.field private booleanConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private dateTimeConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private decimal128Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/Decimal128;",
            ">;"
        }
    .end annotation
.end field

.field private doubleConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private indent:Z

.field private indentCharacters:Ljava/lang/String;

.field private int32Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private int64Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private javaScriptConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxKeyConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMaxKey;",
            ">;"
        }
    .end annotation
.end field

.field private maxLength:I

.field private minKeyConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMinKey;",
            ">;"
        }
    .end annotation
.end field

.field private newLineCharacters:Ljava/lang/String;

.field private nullConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonNull;",
            ">;"
        }
    .end annotation
.end field

.field private objectIdConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/ObjectId;",
            ">;"
        }
    .end annotation
.end field

.field private outputMode:Lorg/bson/json/JsonMode;

.field private regularExpressionConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonRegularExpression;",
            ">;"
        }
    .end annotation
.end field

.field private stringConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private symbolConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestampConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private undefinedConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonUndefined;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "line.separator"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    const-string v0, "  "

    .line 4
    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    .line 5
    sget-object v0, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode:Lorg/bson/json/JsonMode;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/json/JsonWriterSettings$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/json/JsonWriterSettings$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/bson/json/JsonWriterSettings$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->indent:Z

    return p0
.end method

.method public static synthetic access$1000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->int32Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->symbolConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->javaScriptConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->minKeyConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1400(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->maxKeyConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->undefinedConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->dateTimeConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->binaryConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->int64Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$1900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->decimal128Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bson/json/JsonWriterSettings$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->objectIdConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$2100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->timestampConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$2200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->regularExpressionConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bson/json/JsonWriterSettings$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/JsonMode;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode:Lorg/bson/json/JsonMode;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/bson/json/JsonWriterSettings$Builder;)I
    .registers 1

    iget p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->maxLength:I

    return p0
.end method

.method public static synthetic access$600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->nullConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->stringConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->booleanConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/JsonWriterSettings$Builder;->doubleConverter:Lorg/bson/json/Converter;

    return-object p0
.end method


# virtual methods
.method public binaryConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonBinary;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->binaryConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public booleanConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->booleanConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public build()Lorg/bson/json/JsonWriterSettings;
    .registers 3

    new-instance v0, Lorg/bson/json/JsonWriterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;Lorg/bson/json/JsonWriterSettings$1;)V

    return-object v0
.end method

.method public dateTimeConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->dateTimeConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public decimal128Converter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/Decimal128;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->decimal128Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public doubleConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->doubleConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public indent(Z)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->indent:Z

    return-object p0
.end method

.method public indentCharacters(Ljava/lang/String;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 3

    const-string v0, "indentCharacters"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public int32Converter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->int32Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public int64Converter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->int64Converter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public javaScriptConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->javaScriptConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public maxKeyConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMaxKey;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->maxKeyConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public maxLength(I)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "maxLength >= 0"

    .line 1
    invoke-static {v1, v0}, Lorg/bson/assertions/Assertions;->isTrueArgument(Ljava/lang/String;Z)V

    .line 2
    iput p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->maxLength:I

    return-object p0
.end method

.method public minKeyConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMinKey;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->minKeyConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public newLineCharacters(Ljava/lang/String;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 3

    const-string v0, "newLineCharacters"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public nullConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonNull;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->nullConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public objectIdConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/ObjectId;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->objectIdConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 3

    const-string v0, "outputMode"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode:Lorg/bson/json/JsonMode;

    return-object p0
.end method

.method public regularExpressionConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonRegularExpression;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->regularExpressionConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public stringConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->stringConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public symbolConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->symbolConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public timestampConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonTimestamp;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->timestampConverter:Lorg/bson/json/Converter;

    return-object p0
.end method

.method public undefinedConverter(Lorg/bson/json/Converter;)Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonUndefined;",
            ">;)",
            "Lorg/bson/json/JsonWriterSettings$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings$Builder;->undefinedConverter:Lorg/bson/json/Converter;

    return-object p0
.end method
