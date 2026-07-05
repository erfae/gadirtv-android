.class Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Lorg/bson/json/DateTimeFormatter$FormatterImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JaxbDateTimeFormatter"
.end annotation


# static fields
.field private static final DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD:Ljava/lang/reflect/Method;

.field private static final DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "javax.xml.bind.DatatypeConverter"

    .line 1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "parseDateTime"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;->DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "printDateTime"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/util/Calendar;

    aput-object v3, v2, v6

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;->DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_28} :catch_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_30
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "Z"

    .line 3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    :try_start_10
    sget-object p1, Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;->DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD:Ljava/lang/reflect/Method;

    const/4 p2, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_1f} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_1f} :catch_20

    return-object p1

    :catch_20
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 6
    :catch_28
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public parse(Ljava/lang/String;)J
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lorg/bson/json/DateTimeFormatter$JaxbDateTimeFormatter;->DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_14

    return-wide v0

    :catch_14
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_1c
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
