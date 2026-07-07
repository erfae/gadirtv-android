.class public Lio/realm/internal/android/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static jsonDate:Ljava/util/regex/Pattern;

.field private static numericOnly:Ljava/util/regex/Pattern;

.field private static parsePosition:Ljava/text/ParsePosition;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "/Date\\((\\d*)(?:[+-]\\d*)?\\)/"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/realm/internal/android/JsonUtils;->jsonDate:Ljava/util/regex/Pattern;

    const-string v0, "-?\\d+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/realm/internal/android/JsonUtils;->numericOnly:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    sput-object v0, Lio/realm/internal/android/JsonUtils;->parsePosition:Ljava/text/ParsePosition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_f

    .line 2
    :cond_a
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    :cond_f
    :goto_f
    new-array p0, v0, [B

    return-object p0
.end method

.method public static stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_5d

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5d

    .line 2
    :cond_9
    sget-object v0, Lio/realm/internal/android/JsonUtils;->jsonDate:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 6
    :cond_24
    sget-object v0, Lio/realm/internal/android/JsonUtils;->numericOnly:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7
    :try_start_30
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_39} :catch_3a

    return-object v0

    :catch_3a
    move-exception p0

    .line 8
    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_45
    :try_start_45
    sget-object v0, Lio/realm/internal/android/JsonUtils;->parsePosition:Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 10
    sget-object v0, Lio/realm/internal/android/JsonUtils;->parsePosition:Ljava/text/ParsePosition;

    invoke-static {p0, v0}, Lio/realm/internal/android/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0
    :try_end_51
    .catch Ljava/text/ParseException; {:try_start_45 .. :try_end_51} :catch_52

    return-object p0

    :catch_52
    move-exception p0

    .line 11
    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method
