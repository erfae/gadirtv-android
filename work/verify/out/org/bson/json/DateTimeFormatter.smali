.class final Lorg/bson/json/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/DateTimeFormatter$Java8DateTimeFormatter;,
        Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;,
        Lorg/bson/json/DateTimeFormatter$FormatterImpl;
    }
.end annotation


# static fields
.field private static final FORMATTER_IMPL:Lorg/bson/json/DateTimeFormatter$FormatterImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "org.bson.json.DateTimeFormatter$Java8DateTimeFormatter"

    .line 1
    invoke-static {v0}, Lorg/bson/json/DateTimeFormatter;->loadDateTimeFormatter(Ljava/lang/String;)Lorg/bson/json/DateTimeFormatter$FormatterImpl;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    const-string v0, "org.bson.json.DateTimeFormatter$JaxbDateTimeFormatter"

    .line 2
    invoke-static {v0}, Lorg/bson/json/DateTimeFormatter;->loadDateTimeFormatter(Ljava/lang/String;)Lorg/bson/json/DateTimeFormatter$FormatterImpl;

    move-result-object v0

    .line 3
    :goto_d
    sput-object v0, Lorg/bson/json/DateTimeFormatter;->FORMATTER_IMPL:Lorg/bson/json/DateTimeFormatter$FormatterImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(J)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/bson/json/DateTimeFormatter;->FORMATTER_IMPL:Lorg/bson/json/DateTimeFormatter$FormatterImpl;

    invoke-interface {v0, p0, p1}, Lorg/bson/json/DateTimeFormatter$FormatterImpl;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadDateTimeFormatter(Ljava/lang/String;)Lorg/bson/json/DateTimeFormatter$FormatterImpl;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bson/json/DateTimeFormatter$FormatterImpl;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_30
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_13} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1b
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_22
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_29
    move-exception p0

    .line 5
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_30
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 3

    sget-object v0, Lorg/bson/json/DateTimeFormatter;->FORMATTER_IMPL:Lorg/bson/json/DateTimeFormatter$FormatterImpl;

    invoke-interface {v0, p0}, Lorg/bson/json/DateTimeFormatter$FormatterImpl;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
