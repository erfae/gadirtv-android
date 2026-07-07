.class public Lorg/bson/json/JsonWriterSettings;
.super Lorg/bson/BsonWriterSettings;
.source "JsonWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/JsonWriterSettings$Builder;
    }
.end annotation


# static fields
.field private static final EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/ExtendedJsonBinaryConverter;

.field private static final EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/ExtendedJsonDateTimeConverter;

.field private static final EXTENDED_JSON_DECIMAL_128_CONVERTER:Lorg/bson/json/ExtendedJsonDecimal128Converter;

.field private static final EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/ExtendedJsonDoubleConverter;

.field private static final EXTENDED_JSON_INT_32_CONVERTER:Lorg/bson/json/ExtendedJsonInt32Converter;

.field private static final EXTENDED_JSON_INT_64_CONVERTER:Lorg/bson/json/ExtendedJsonInt64Converter;

.field private static final EXTENDED_JSON_MAX_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMaxKeyConverter;

.field private static final EXTENDED_JSON_MIN_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMinKeyConverter;

.field private static final EXTENDED_JSON_OBJECT_ID_CONVERTER:Lorg/bson/json/ExtendedJsonObjectIdConverter;

.field private static final EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ExtendedJsonRegularExpressionConverter;

.field private static final EXTENDED_JSON_TIMESTAMP_CONVERTER:Lorg/bson/json/ExtendedJsonTimestampConverter;

.field private static final EXTENDED_JSON_UNDEFINED_CONVERTER:Lorg/bson/json/ExtendedJsonUndefinedConverter;

.field private static final JSON_BOOLEAN_CONVERTER:Lorg/bson/json/JsonBooleanConverter;

.field private static final JSON_DOUBLE_CONVERTER:Lorg/bson/json/JsonDoubleConverter;

.field private static final JSON_INT_32_CONVERTER:Lorg/bson/json/JsonInt32Converter;

.field private static final JSON_NULL_CONVERTER:Lorg/bson/json/JsonNullConverter;

.field private static final JSON_STRING_CONVERTER:Lorg/bson/json/JsonStringConverter;

.field private static final JSON_SYMBOL_CONVERTER:Lorg/bson/json/JsonSymbolConverter;

.field private static final LEGACY_EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/LegacyExtendedJsonBinaryConverter;

.field private static final LEGACY_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/LegacyExtendedJsonDateTimeConverter;

.field private static final LEGACY_EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/LegacyExtendedJsonRegularExpressionConverter;

.field private static final RELAXED_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDateTimeConverter;

.field private static final RELAXED_EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDoubleConverter;

.field private static final RELAXED_JSON_INT_64_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonInt64Converter;

.field private static final SHELL_BINARY_CONVERTER:Lorg/bson/json/ShellBinaryConverter;

.field private static final SHELL_DATE_TIME_CONVERTER:Lorg/bson/json/ShellDateTimeConverter;

.field private static final SHELL_DECIMAL_128_CONVERTER:Lorg/bson/json/ShellDecimal128Converter;

.field private static final SHELL_INT_64_CONVERTER:Lorg/bson/json/ShellInt64Converter;

.field private static final SHELL_MAX_KEY_CONVERTER:Lorg/bson/json/ShellMaxKeyConverter;

.field private static final SHELL_MIN_KEY_CONVERTER:Lorg/bson/json/ShellMinKeyConverter;

.field private static final SHELL_OBJECT_ID_CONVERTER:Lorg/bson/json/ShellObjectIdConverter;

.field private static final SHELL_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ShellRegularExpressionConverter;

.field private static final SHELL_TIMESTAMP_CONVERTER:Lorg/bson/json/ShellTimestampConverter;

.field private static final SHELL_UNDEFINED_CONVERTER:Lorg/bson/json/ShellUndefinedConverter;


# instance fields
.field private final binaryConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonBinary;",
            ">;"
        }
    .end annotation
.end field

.field private final booleanConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dateTimeConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final decimal128Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/Decimal128;",
            ">;"
        }
    .end annotation
.end field

.field private final doubleConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final indent:Z

.field private final indentCharacters:Ljava/lang/String;

.field private final int32Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final int64Converter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final javaScriptConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxKeyConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMaxKey;",
            ">;"
        }
    .end annotation
.end field

.field private final maxLength:I

.field private final minKeyConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMinKey;",
            ">;"
        }
    .end annotation
.end field

.field private final newLineCharacters:Ljava/lang/String;

.field private final nullConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonNull;",
            ">;"
        }
    .end annotation
.end field

.field private final objectIdConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/ObjectId;",
            ">;"
        }
    .end annotation
.end field

.field private final outputMode:Lorg/bson/json/JsonMode;

.field private final regularExpressionConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonRegularExpression;",
            ">;"
        }
    .end annotation
.end field

.field private final stringConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final symbolConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final undefinedConverter:Lorg/bson/json/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonUndefined;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/bson/json/JsonNullConverter;

    invoke-direct {v0}, Lorg/bson/json/JsonNullConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_NULL_CONVERTER:Lorg/bson/json/JsonNullConverter;

    .line 2
    new-instance v0, Lorg/bson/json/JsonStringConverter;

    invoke-direct {v0}, Lorg/bson/json/JsonStringConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_STRING_CONVERTER:Lorg/bson/json/JsonStringConverter;

    .line 3
    new-instance v0, Lorg/bson/json/JsonBooleanConverter;

    invoke-direct {v0}, Lorg/bson/json/JsonBooleanConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_BOOLEAN_CONVERTER:Lorg/bson/json/JsonBooleanConverter;

    .line 4
    new-instance v0, Lorg/bson/json/JsonDoubleConverter;

    invoke-direct {v0}, Lorg/bson/json/JsonDoubleConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_DOUBLE_CONVERTER:Lorg/bson/json/JsonDoubleConverter;

    .line 5
    new-instance v0, Lorg/bson/json/ExtendedJsonDoubleConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonDoubleConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/ExtendedJsonDoubleConverter;

    .line 6
    new-instance v0, Lorg/bson/json/RelaxedExtendedJsonDoubleConverter;

    invoke-direct {v0}, Lorg/bson/json/RelaxedExtendedJsonDoubleConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->RELAXED_EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDoubleConverter;

    .line 7
    new-instance v0, Lorg/bson/json/JsonInt32Converter;

    invoke-direct {v0}, Lorg/bson/json/JsonInt32Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_INT_32_CONVERTER:Lorg/bson/json/JsonInt32Converter;

    .line 8
    new-instance v0, Lorg/bson/json/ExtendedJsonInt32Converter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonInt32Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_INT_32_CONVERTER:Lorg/bson/json/ExtendedJsonInt32Converter;

    .line 9
    new-instance v0, Lorg/bson/json/JsonSymbolConverter;

    invoke-direct {v0}, Lorg/bson/json/JsonSymbolConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->JSON_SYMBOL_CONVERTER:Lorg/bson/json/JsonSymbolConverter;

    .line 10
    new-instance v0, Lorg/bson/json/ExtendedJsonMinKeyConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonMinKeyConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_MIN_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMinKeyConverter;

    .line 11
    new-instance v0, Lorg/bson/json/ShellMinKeyConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellMinKeyConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_MIN_KEY_CONVERTER:Lorg/bson/json/ShellMinKeyConverter;

    .line 12
    new-instance v0, Lorg/bson/json/ExtendedJsonMaxKeyConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonMaxKeyConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_MAX_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMaxKeyConverter;

    .line 13
    new-instance v0, Lorg/bson/json/ShellMaxKeyConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellMaxKeyConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_MAX_KEY_CONVERTER:Lorg/bson/json/ShellMaxKeyConverter;

    .line 14
    new-instance v0, Lorg/bson/json/ExtendedJsonUndefinedConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonUndefinedConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_UNDEFINED_CONVERTER:Lorg/bson/json/ExtendedJsonUndefinedConverter;

    .line 15
    new-instance v0, Lorg/bson/json/ShellUndefinedConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellUndefinedConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_UNDEFINED_CONVERTER:Lorg/bson/json/ShellUndefinedConverter;

    .line 16
    new-instance v0, Lorg/bson/json/LegacyExtendedJsonDateTimeConverter;

    invoke-direct {v0}, Lorg/bson/json/LegacyExtendedJsonDateTimeConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/LegacyExtendedJsonDateTimeConverter;

    .line 17
    new-instance v0, Lorg/bson/json/ExtendedJsonDateTimeConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonDateTimeConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/ExtendedJsonDateTimeConverter;

    .line 18
    new-instance v0, Lorg/bson/json/RelaxedExtendedJsonDateTimeConverter;

    invoke-direct {v0}, Lorg/bson/json/RelaxedExtendedJsonDateTimeConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->RELAXED_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDateTimeConverter;

    .line 19
    new-instance v0, Lorg/bson/json/ShellDateTimeConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellDateTimeConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_DATE_TIME_CONVERTER:Lorg/bson/json/ShellDateTimeConverter;

    .line 20
    new-instance v0, Lorg/bson/json/ExtendedJsonBinaryConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonBinaryConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/ExtendedJsonBinaryConverter;

    .line 21
    new-instance v0, Lorg/bson/json/LegacyExtendedJsonBinaryConverter;

    invoke-direct {v0}, Lorg/bson/json/LegacyExtendedJsonBinaryConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/LegacyExtendedJsonBinaryConverter;

    .line 22
    new-instance v0, Lorg/bson/json/ShellBinaryConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellBinaryConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_BINARY_CONVERTER:Lorg/bson/json/ShellBinaryConverter;

    .line 23
    new-instance v0, Lorg/bson/json/ExtendedJsonInt64Converter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonInt64Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_INT_64_CONVERTER:Lorg/bson/json/ExtendedJsonInt64Converter;

    .line 24
    new-instance v0, Lorg/bson/json/RelaxedExtendedJsonInt64Converter;

    invoke-direct {v0}, Lorg/bson/json/RelaxedExtendedJsonInt64Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->RELAXED_JSON_INT_64_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonInt64Converter;

    .line 25
    new-instance v0, Lorg/bson/json/ShellInt64Converter;

    invoke-direct {v0}, Lorg/bson/json/ShellInt64Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_INT_64_CONVERTER:Lorg/bson/json/ShellInt64Converter;

    .line 26
    new-instance v0, Lorg/bson/json/ExtendedJsonDecimal128Converter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonDecimal128Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DECIMAL_128_CONVERTER:Lorg/bson/json/ExtendedJsonDecimal128Converter;

    .line 27
    new-instance v0, Lorg/bson/json/ShellDecimal128Converter;

    invoke-direct {v0}, Lorg/bson/json/ShellDecimal128Converter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_DECIMAL_128_CONVERTER:Lorg/bson/json/ShellDecimal128Converter;

    .line 28
    new-instance v0, Lorg/bson/json/ExtendedJsonObjectIdConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonObjectIdConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_OBJECT_ID_CONVERTER:Lorg/bson/json/ExtendedJsonObjectIdConverter;

    .line 29
    new-instance v0, Lorg/bson/json/ShellObjectIdConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellObjectIdConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_OBJECT_ID_CONVERTER:Lorg/bson/json/ShellObjectIdConverter;

    .line 30
    new-instance v0, Lorg/bson/json/ExtendedJsonTimestampConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonTimestampConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_TIMESTAMP_CONVERTER:Lorg/bson/json/ExtendedJsonTimestampConverter;

    .line 31
    new-instance v0, Lorg/bson/json/ShellTimestampConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellTimestampConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_TIMESTAMP_CONVERTER:Lorg/bson/json/ShellTimestampConverter;

    .line 32
    new-instance v0, Lorg/bson/json/ExtendedJsonRegularExpressionConverter;

    invoke-direct {v0}, Lorg/bson/json/ExtendedJsonRegularExpressionConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ExtendedJsonRegularExpressionConverter;

    .line 33
    new-instance v0, Lorg/bson/json/LegacyExtendedJsonRegularExpressionConverter;

    invoke-direct {v0}, Lorg/bson/json/LegacyExtendedJsonRegularExpressionConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/LegacyExtendedJsonRegularExpressionConverter;

    .line 34
    new-instance v0, Lorg/bson/json/ShellRegularExpressionConverter;

    invoke-direct {v0}, Lorg/bson/json/ShellRegularExpressionConverter;-><init>()V

    sput-object v0, Lorg/bson/json/JsonWriterSettings;->SHELL_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ShellRegularExpressionConverter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    invoke-virtual {v0, v1}, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/json/JsonMode;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/json/JsonMode;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bson/json/JsonWriterSettings$Builder;->indent(Z)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters(Ljava/lang/String;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/json/JsonMode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bson/json/JsonWriterSettings$Builder;->indent(Z)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters(Ljava/lang/String;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters(Ljava/lang/String;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/json/JsonMode;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/json/JsonWriterSettings$Builder;->outputMode(Lorg/bson/json/JsonMode;)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bson/json/JsonWriterSettings$Builder;->indent(Z)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/bson/json/JsonWriterSettings$Builder;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Lorg/bson/BsonWriterSettings;-><init>()V

    .line 9
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->indent:Z
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$100(Lorg/bson/json/JsonWriterSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bson/json/JsonWriterSettings;->indent:Z

    .line 10
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$200(Lorg/bson/json/JsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$200(Lorg/bson/json/JsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_14
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings;->newLineCharacters:Ljava/lang/String;

    .line 11
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$300(Lorg/bson/json/JsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings;->indentCharacters:Ljava/lang/String;

    .line 12
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->outputMode:Lorg/bson/json/JsonMode;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$400(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/JsonMode;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/JsonWriterSettings;->outputMode:Lorg/bson/json/JsonMode;

    .line 13
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->maxLength:I
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$500(Lorg/bson/json/JsonWriterSettings$Builder;)I

    move-result v1

    iput v1, p0, Lorg/bson/json/JsonWriterSettings;->maxLength:I

    .line 14
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->nullConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 15
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->nullConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->nullConverter:Lorg/bson/json/Converter;

    goto :goto_3f

    .line 16
    :cond_3b
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_NULL_CONVERTER:Lorg/bson/json/JsonNullConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->nullConverter:Lorg/bson/json/Converter;

    .line 17
    :goto_3f
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->stringConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 18
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->stringConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->stringConverter:Lorg/bson/json/Converter;

    goto :goto_50

    .line 19
    :cond_4c
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_STRING_CONVERTER:Lorg/bson/json/JsonStringConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->stringConverter:Lorg/bson/json/Converter;

    .line 20
    :goto_50
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->booleanConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 21
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->booleanConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->booleanConverter:Lorg/bson/json/Converter;

    goto :goto_61

    .line 22
    :cond_5d
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_BOOLEAN_CONVERTER:Lorg/bson/json/JsonBooleanConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->booleanConverter:Lorg/bson/json/Converter;

    .line 23
    :goto_61
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->doubleConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 24
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->doubleConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->doubleConverter:Lorg/bson/json/Converter;

    goto :goto_84

    .line 25
    :cond_6e
    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_77

    .line 26
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/ExtendedJsonDoubleConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->doubleConverter:Lorg/bson/json/Converter;

    goto :goto_84

    .line 27
    :cond_77
    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_80

    .line 28
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->RELAXED_EXTENDED_JSON_DOUBLE_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDoubleConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->doubleConverter:Lorg/bson/json/Converter;

    goto :goto_84

    .line 29
    :cond_80
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_DOUBLE_CONVERTER:Lorg/bson/json/JsonDoubleConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->doubleConverter:Lorg/bson/json/Converter;

    .line 30
    :goto_84
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->int32Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 31
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->int32Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int32Converter:Lorg/bson/json/Converter;

    goto :goto_9e

    .line 32
    :cond_91
    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_9a

    .line 33
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_INT_32_CONVERTER:Lorg/bson/json/ExtendedJsonInt32Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int32Converter:Lorg/bson/json/Converter;

    goto :goto_9e

    .line 34
    :cond_9a
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_INT_32_CONVERTER:Lorg/bson/json/JsonInt32Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int32Converter:Lorg/bson/json/Converter;

    .line 35
    :goto_9e
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->symbolConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 36
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->symbolConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->symbolConverter:Lorg/bson/json/Converter;

    goto :goto_af

    .line 37
    :cond_ab
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->JSON_SYMBOL_CONVERTER:Lorg/bson/json/JsonSymbolConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->symbolConverter:Lorg/bson/json/Converter;

    .line 38
    :goto_af
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->javaScriptConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 39
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->javaScriptConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->javaScriptConverter:Lorg/bson/json/Converter;

    goto :goto_c3

    .line 40
    :cond_bc
    new-instance v1, Lorg/bson/json/JsonJavaScriptConverter;

    invoke-direct {v1}, Lorg/bson/json/JsonJavaScriptConverter;-><init>()V

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->javaScriptConverter:Lorg/bson/json/Converter;

    .line 41
    :goto_c3
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->minKeyConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1300(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_d0

    .line 42
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->minKeyConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1300(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->minKeyConverter:Lorg/bson/json/Converter;

    goto :goto_e6

    .line 43
    :cond_d0
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_e2

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_e2

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_dd

    goto :goto_e2

    .line 44
    :cond_dd
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_MIN_KEY_CONVERTER:Lorg/bson/json/ShellMinKeyConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->minKeyConverter:Lorg/bson/json/Converter;

    goto :goto_e6

    .line 45
    :cond_e2
    :goto_e2
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_MIN_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMinKeyConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->minKeyConverter:Lorg/bson/json/Converter;

    .line 46
    :goto_e6
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->maxKeyConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1400(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 47
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->maxKeyConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1400(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->maxKeyConverter:Lorg/bson/json/Converter;

    goto :goto_109

    .line 48
    :cond_f3
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_105

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_105

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_100

    goto :goto_105

    .line 49
    :cond_100
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_MAX_KEY_CONVERTER:Lorg/bson/json/ShellMaxKeyConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->maxKeyConverter:Lorg/bson/json/Converter;

    goto :goto_109

    .line 50
    :cond_105
    :goto_105
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_MAX_KEY_CONVERTER:Lorg/bson/json/ExtendedJsonMaxKeyConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->maxKeyConverter:Lorg/bson/json/Converter;

    .line 51
    :goto_109
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->undefinedConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1500(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 52
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->undefinedConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1500(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->undefinedConverter:Lorg/bson/json/Converter;

    goto :goto_12c

    .line 53
    :cond_116
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_128

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_128

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_123

    goto :goto_128

    .line 54
    :cond_123
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_UNDEFINED_CONVERTER:Lorg/bson/json/ShellUndefinedConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->undefinedConverter:Lorg/bson/json/Converter;

    goto :goto_12c

    .line 55
    :cond_128
    :goto_128
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_UNDEFINED_CONVERTER:Lorg/bson/json/ExtendedJsonUndefinedConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->undefinedConverter:Lorg/bson/json/Converter;

    .line 56
    :goto_12c
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->dateTimeConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_139

    .line 57
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->dateTimeConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1600(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    goto :goto_158

    .line 58
    :cond_139
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_142

    .line 59
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/LegacyExtendedJsonDateTimeConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    goto :goto_158

    .line 60
    :cond_142
    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_14b

    .line 61
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/ExtendedJsonDateTimeConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    goto :goto_158

    .line 62
    :cond_14b
    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_154

    .line 63
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->RELAXED_EXTENDED_JSON_DATE_TIME_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonDateTimeConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    goto :goto_158

    .line 64
    :cond_154
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_DATE_TIME_CONVERTER:Lorg/bson/json/ShellDateTimeConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    .line 65
    :goto_158
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->binaryConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_165

    .line 66
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->binaryConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1700(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->binaryConverter:Lorg/bson/json/Converter;

    goto :goto_180

    .line 67
    :cond_165
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_16e

    .line 68
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/LegacyExtendedJsonBinaryConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->binaryConverter:Lorg/bson/json/Converter;

    goto :goto_180

    .line 69
    :cond_16e
    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_17c

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_177

    goto :goto_17c

    .line 70
    :cond_177
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_BINARY_CONVERTER:Lorg/bson/json/ShellBinaryConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->binaryConverter:Lorg/bson/json/Converter;

    goto :goto_180

    .line 71
    :cond_17c
    :goto_17c
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_BINARY_CONVERTER:Lorg/bson/json/ExtendedJsonBinaryConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->binaryConverter:Lorg/bson/json/Converter;

    .line 72
    :goto_180
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->int64Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_18d

    .line 73
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->int64Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1800(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int64Converter:Lorg/bson/json/Converter;

    goto :goto_1a8

    .line 74
    :cond_18d
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_1a4

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_196

    goto :goto_1a4

    .line 75
    :cond_196
    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_19f

    .line 76
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->RELAXED_JSON_INT_64_CONVERTER:Lorg/bson/json/RelaxedExtendedJsonInt64Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int64Converter:Lorg/bson/json/Converter;

    goto :goto_1a8

    .line 77
    :cond_19f
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_INT_64_CONVERTER:Lorg/bson/json/ShellInt64Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int64Converter:Lorg/bson/json/Converter;

    goto :goto_1a8

    .line 78
    :cond_1a4
    :goto_1a4
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_INT_64_CONVERTER:Lorg/bson/json/ExtendedJsonInt64Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->int64Converter:Lorg/bson/json/Converter;

    .line 79
    :goto_1a8
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->decimal128Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_1b5

    .line 80
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->decimal128Converter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$1900(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->decimal128Converter:Lorg/bson/json/Converter;

    goto :goto_1cb

    .line 81
    :cond_1b5
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_1c7

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_1c7

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_1c2

    goto :goto_1c7

    .line 82
    :cond_1c2
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_DECIMAL_128_CONVERTER:Lorg/bson/json/ShellDecimal128Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->decimal128Converter:Lorg/bson/json/Converter;

    goto :goto_1cb

    .line 83
    :cond_1c7
    :goto_1c7
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_DECIMAL_128_CONVERTER:Lorg/bson/json/ExtendedJsonDecimal128Converter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->decimal128Converter:Lorg/bson/json/Converter;

    .line 84
    :goto_1cb
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->objectIdConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_1d8

    .line 85
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->objectIdConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2000(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->objectIdConverter:Lorg/bson/json/Converter;

    goto :goto_1ee

    .line 86
    :cond_1d8
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_1ea

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_1ea

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_1e5

    goto :goto_1ea

    .line 87
    :cond_1e5
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_OBJECT_ID_CONVERTER:Lorg/bson/json/ShellObjectIdConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->objectIdConverter:Lorg/bson/json/Converter;

    goto :goto_1ee

    .line 88
    :cond_1ea
    :goto_1ea
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_OBJECT_ID_CONVERTER:Lorg/bson/json/ExtendedJsonObjectIdConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->objectIdConverter:Lorg/bson/json/Converter;

    .line 89
    :goto_1ee
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->timestampConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_1fb

    .line 90
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->timestampConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2100(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->timestampConverter:Lorg/bson/json/Converter;

    goto :goto_211

    .line 91
    :cond_1fb
    sget-object v1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_20d

    sget-object v1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, v1, :cond_20d

    sget-object v1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, v1, :cond_208

    goto :goto_20d

    .line 92
    :cond_208
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->SHELL_TIMESTAMP_CONVERTER:Lorg/bson/json/ShellTimestampConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->timestampConverter:Lorg/bson/json/Converter;

    goto :goto_211

    .line 93
    :cond_20d
    :goto_20d
    sget-object v1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_TIMESTAMP_CONVERTER:Lorg/bson/json/ExtendedJsonTimestampConverter;

    iput-object v1, p0, Lorg/bson/json/JsonWriterSettings;->timestampConverter:Lorg/bson/json/Converter;

    .line 94
    :goto_211
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->regularExpressionConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object v1

    if-eqz v1, :cond_21e

    .line 95
    # getter for: Lorg/bson/json/JsonWriterSettings$Builder;->regularExpressionConverter:Lorg/bson/json/Converter;
    invoke-static {p1}, Lorg/bson/json/JsonWriterSettings$Builder;->access$2200(Lorg/bson/json/JsonWriterSettings$Builder;)Lorg/bson/json/Converter;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings;->regularExpressionConverter:Lorg/bson/json/Converter;

    goto :goto_239

    .line 96
    :cond_21e
    sget-object p1, Lorg/bson/json/JsonMode;->EXTENDED:Lorg/bson/json/JsonMode;

    if-eq v0, p1, :cond_235

    sget-object p1, Lorg/bson/json/JsonMode;->RELAXED:Lorg/bson/json/JsonMode;

    if-ne v0, p1, :cond_227

    goto :goto_235

    .line 97
    :cond_227
    sget-object p1, Lorg/bson/json/JsonMode;->STRICT:Lorg/bson/json/JsonMode;

    if-ne v0, p1, :cond_230

    .line 98
    sget-object p1, Lorg/bson/json/JsonWriterSettings;->LEGACY_EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/LegacyExtendedJsonRegularExpressionConverter;

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings;->regularExpressionConverter:Lorg/bson/json/Converter;

    goto :goto_239

    .line 99
    :cond_230
    sget-object p1, Lorg/bson/json/JsonWriterSettings;->SHELL_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ShellRegularExpressionConverter;

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings;->regularExpressionConverter:Lorg/bson/json/Converter;

    goto :goto_239

    .line 100
    :cond_235
    :goto_235
    sget-object p1, Lorg/bson/json/JsonWriterSettings;->EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER:Lorg/bson/json/ExtendedJsonRegularExpressionConverter;

    iput-object p1, p0, Lorg/bson/json/JsonWriterSettings;->regularExpressionConverter:Lorg/bson/json/Converter;

    :goto_239
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/json/JsonWriterSettings$Builder;Lorg/bson/json/JsonWriterSettings$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {}, Lorg/bson/json/JsonWriterSettings;->builder()Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bson/json/JsonWriterSettings$Builder;->indent(Z)Lorg/bson/json/JsonWriterSettings$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/json/JsonWriterSettings;-><init>(Lorg/bson/json/JsonWriterSettings$Builder;)V

    return-void
.end method

.method public static builder()Lorg/bson/json/JsonWriterSettings$Builder;
    .registers 2

    new-instance v0, Lorg/bson/json/JsonWriterSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bson/json/JsonWriterSettings$Builder;-><init>(Lorg/bson/json/JsonWriterSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getBinaryConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonBinary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->binaryConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getBooleanConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->booleanConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getDateTimeConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->dateTimeConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getDecimal128Converter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/Decimal128;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->decimal128Converter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getDoubleConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->doubleConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getIndentCharacters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->indentCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getInt32Converter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->int32Converter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getInt64Converter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->int64Converter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getJavaScriptConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->javaScriptConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getMaxKeyConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMaxKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->maxKeyConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    iget v0, p0, Lorg/bson/json/JsonWriterSettings;->maxLength:I

    return v0
.end method

.method public getMinKeyConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonMinKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->minKeyConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getNewLineCharacters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->newLineCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getNullConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonNull;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->nullConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getObjectIdConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/types/ObjectId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->objectIdConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getOutputMode()Lorg/bson/json/JsonMode;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->outputMode:Lorg/bson/json/JsonMode;

    return-object v0
.end method

.method public getRegularExpressionConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonRegularExpression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->regularExpressionConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getStringConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->stringConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getSymbolConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->symbolConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getTimestampConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonTimestamp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->timestampConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public getUndefinedConverter()Lorg/bson/json/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/json/Converter<",
            "Lorg/bson/BsonUndefined;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/json/JsonWriterSettings;->undefinedConverter:Lorg/bson/json/Converter;

    return-object v0
.end method

.method public isIndent()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bson/json/JsonWriterSettings;->indent:Z

    return v0
.end method
