.class public Lio/realm/internal/android/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final TIMEZONE_Z:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "UTC"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 2
    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_16

    const/16 v1, 0x39

    if-le v0, v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    return p1

    .line 3
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\'"

    .line 1
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v4, v0, 0x4

    .line 2
    invoke-static {v1, v0, v4}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    const/16 v5, 0x2d

    .line 3
    invoke-static {v1, v4, v5}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_1a

    add-int/lit8 v4, v4, 0x1

    :cond_1a
    add-int/lit8 v6, v4, 0x2

    .line 4
    invoke-static {v1, v4, v6}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    .line 5
    invoke-static {v1, v6, v5}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_28

    add-int/lit8 v6, v6, 0x1

    :cond_28
    add-int/lit8 v7, v6, 0x2

    .line 6
    invoke-static {v1, v6, v7}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v8, 0x54

    .line 7
    invoke-static {v1, v7, v8}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_4b

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v7, :cond_4b

    .line 9
    new-instance v5, Ljava/util/GregorianCalendar;

    sub-int/2addr v4, v9

    invoke-direct {v5, v0, v4, v6}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 10
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 11
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_4b
    const/16 v10, 0x2b

    const/16 v11, 0x5a

    const/4 v12, 0x2

    if-eqz v8, :cond_c2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v7, 0x2

    .line 12
    invoke-static {v1, v7, v8}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v13, 0x3a

    .line 13
    invoke-static {v1, v8, v13}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v14

    if-eqz v14, :cond_64

    add-int/lit8 v8, v8, 0x1

    :cond_64
    add-int/lit8 v14, v8, 0x2

    .line 14
    invoke-static {v1, v8, v14}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 15
    invoke-static {v1, v14, v13}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13

    if-eqz v13, :cond_72

    add-int/lit8 v14, v14, 0x1

    .line 16
    :cond_72
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v14, :cond_bf

    .line 17
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v11, :cond_bf

    if-eq v13, v10, :cond_bf

    if-eq v13, v5, :cond_bf

    add-int/lit8 v5, v14, 0x2

    .line 18
    invoke-static {v1, v14, v5}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v13

    const/16 v14, 0x3b

    if-le v13, v14, :cond_92

    const/16 v14, 0x3f

    if-ge v13, v14, :cond_92

    const/16 v13, 0x3b

    :cond_92
    const/16 v14, 0x2e

    .line 19
    invoke-static {v1, v5, v14}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v14

    if-eqz v14, :cond_bb

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v5, 0x1

    .line 20
    invoke-static {v1, v14}, Lio/realm/internal/android/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v14

    add-int/lit8 v15, v5, 0x3

    .line 21
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 22
    invoke-static {v1, v5, v15}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    sub-int/2addr v15, v5

    if-eq v15, v9, :cond_b5

    if-eq v15, v12, :cond_b2

    goto :goto_b7

    :cond_b2
    mul-int/lit8 v16, v16, 0xa

    goto :goto_b7

    :cond_b5
    mul-int/lit8 v16, v16, 0x64

    :goto_b7
    move v5, v14

    move/from16 v12, v16

    goto :goto_cd

    :cond_bb
    const/16 v16, 0x0

    const/4 v12, 0x0

    goto :goto_cd

    :cond_bf
    move v5, v7

    move v7, v14

    goto :goto_c4

    :cond_c2
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_c4
    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move/from16 v17, v7

    move v7, v5

    move/from16 v5, v17

    .line 23
    :goto_cd
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v5, :cond_1b6

    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_de

    .line 25
    sget-object v10, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    add-int/2addr v5, v9

    goto/16 :goto_184

    :cond_de
    if-eq v14, v10, :cond_ff

    const/16 v9, 0x2d

    if-ne v14, v9, :cond_e5

    goto :goto_ff

    .line 26
    :cond_e5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid time zone indicator \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_ff
    :goto_ff
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 29
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_120

    .line 30
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "00"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_120
    const-string v10, "+0000"

    .line 31
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_182

    const-string v10, "+00:00"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_131

    goto :goto_182

    .line 32
    :cond_131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GMT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 34
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    .line 35
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_184

    const-string v14, ":"

    const-string v15, ""

    .line 36
    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 37
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15f

    goto :goto_184

    .line 38
    :cond_15f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatching time zone indicator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " given, resolves to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_182
    :goto_182
    sget-object v10, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 41
    :cond_184
    :goto_184
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v10, 0x0

    .line 42
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v10, 0x1

    .line 43
    invoke-virtual {v9, v10, v0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v4, v10

    const/4 v0, 0x2

    .line 44
    invoke-virtual {v9, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 45
    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 46
    invoke-virtual {v9, v0, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 47
    invoke-virtual {v9, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 48
    invoke-virtual {v9, v0, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 49
    invoke-virtual {v9, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 50
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 51
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "No time zone indicator"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_1be} :catch_1c2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_1be} :catch_1c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1be} :catch_1be

    :catch_1be
    move-exception v0

    goto :goto_1c3

    :catch_1c0
    move-exception v0

    goto :goto_1c3

    :catch_1c2
    move-exception v0

    :goto_1c3
    if-nez v1, :cond_1c7

    const/4 v1, 0x0

    goto :goto_1db

    .line 53
    :cond_1c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_1db
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e7

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_201

    :cond_1e7
    const-string v3, "("

    .line 56
    invoke-static {v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_201
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse date ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_5f

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_5f

    if-gt p1, p2, :cond_5f

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_33

    add-int/lit8 v2, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_1e

    neg-int v3, v3

    goto :goto_35

    .line 3
    :cond_1e
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 4
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    const/4 v3, 0x0

    move v2, p1

    :goto_35
    if-ge v2, p2, :cond_5d

    add-int/lit8 v4, v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_48

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_35

    .line 7
    :cond_48
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 8
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    neg-int p0, v3

    return p0

    .line 10
    :cond_5f
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
