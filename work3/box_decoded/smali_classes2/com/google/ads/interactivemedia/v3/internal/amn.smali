.class public Lcom/google/ads/interactivemedia/v3/internal/amn;
.super Lcom/google/ads/interactivemedia/v3/internal/aml;
.source "IMASDK"


# static fields
.field static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:J

.field private static t:Lcom/google/ads/interactivemedia/v3/internal/amv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aml;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 77
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/amn;->t:Lcom/google/ads/interactivemedia/v3/internal/amv;

    .line 2
    invoke-virtual {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/amv;->a([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static declared-synchronized a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;)V
    .locals 19

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/amn;

    monitor-enter v1

    :try_start_0
    const-string v0, "a.3.20.1"

    sget-boolean v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_2

    :try_start_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amv;

    move-object/from16 v3, p1

    .line 78
    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/amv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/amt;)V

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->t:Lcom/google/ads/interactivemedia/v3/internal/amv;

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->p:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 79
    :try_start_2
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/amv;->a()[B

    move-result-object v0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->t:Lcom/google/ads/interactivemedia/v3/internal/amv;

    const-string v3, "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"

    .line 80
    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/amv;->a([BLjava/lang/String;)[B

    move-result-object v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "dex"

    move-object/from16 v5, p0

    .line 82
    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 148
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v5, p0

    :goto_0
    const-string v6, "ads"

    const-string v7, ".jar"

    .line 83
    invoke-static {v6, v7, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/FileOutputStream;

    .line 84
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    array-length v8, v2

    invoke-virtual {v7, v2, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 86
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amu; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 87
    :try_start_3
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v7, v8, v9, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v5, "13+D8YKo7JA4YclLYFLTkDoLYm79WC6PTAAgd/iaV5l4mfBjRCrtCqwg533KI4Aw"

    .line 91
    invoke-static {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "52UTclpblbgPZlv7Nj6v0rtDMPh43h349e01ntb69/chxdGasn3EykJHT0GFkNS+"

    .line 93
    invoke-static {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "PLcKoSXa/7Erhgptf0Tz500+Zs0BLV22dGPCJPuPX1GNC9pyFVkRFks19kPnvjsE"

    .line 95
    invoke-static {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "BVu9+hfoVnCGMY+PLQku1FUwfoIHRy389bNZXV62hXZUkceukjyax4oNU/CRj5DY"

    .line 97
    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "lO2J0nQ8iUbwpSP7x7JVTRl9z6TOAokJraLnSEcbLEoX9aCYnEQiu/7d/0ADK+Kt"

    .line 99
    invoke-static {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual {v2, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "3STGKgBH0KW29J9eL7SkydCEoMJ5wVqqxnqpt7l1d/UdAE49dT9zzc+xme8GwL0S"

    .line 101
    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "R75TFH8UxzX6KzwmMOIAiEOgZ3w/LZFVVBMgCkszL4MS7jU6KCq3bFshhYLpG/lm"

    .line 103
    invoke-static {v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 104
    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "Cd51XF2SemCUJwXZiKeIYddl4xLKDa/a258CP7t9qBxOqbBbeoj3yUZZjpA6+SrQ"

    .line 105
    invoke-static {v0, v13}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 106
    invoke-virtual {v2, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "6Op3Osq/ycP+Tw/h0nZIOiaxu9PqhRTncsN3gXFfkXzFNVbOmFRaKWvs9L9+aZBY"

    .line 107
    invoke-static {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 108
    invoke-virtual {v2, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "/RcUmTOFoVKQmYTx4SXUI3MZ+V8YeEVVMyskmyn2LKriaejeXpUmZci+LjJRw7Qi"

    .line 109
    invoke-static {v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 110
    invoke-virtual {v2, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    const-string v4, "6LQAb447ICiHxbmOtmji3D4hpfwXiEjse1ir9OC50xqyamJ/KbX1/nX8AsL+bHcb"

    .line 111
    invoke-static {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v2, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v3

    :try_start_4
    const-string v3, "OJV6xVIR1eh7tYy9riemmYtkPaU/NBCWvnOl95ehf5cPSRNoet0V98Y76fm3gKIx"

    .line 113
    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v6

    :try_start_5
    const-string v6, "eHOtFwMll5L1Neq7FYSb/mAfmCK3mjwD+kcR5jCosVyfkrvUDmIwRjmV8+q2NHYn"

    .line 115
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v6, "GTcx0b8AlfY1ZowRGVcxzzHzJO55sJlZwAMsaBOasD4="

    .line 117
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p0, v2

    move-object/from16 v18, v3

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 118
    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/amn;->d:Ljava/lang/reflect/Method;

    const-string v3, "H2mF8ih5ZQ8pxTr+44xGtS8h3iHalDiydTmNQvvB9PE="

    .line 119
    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    .line 120
    invoke-virtual {v7, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/amn;->e:Ljava/lang/reflect/Method;

    const-string v3, "6ZHRPIXbN2vTr12hv8v+TAgfU76HlS1m5AiZXFvaSto="

    .line 121
    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Class;

    .line 122
    invoke-virtual {v8, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->f:Ljava/lang/reflect/Method;

    const-string v2, "dx4bb6UNwy6nC3HkcVDqL3Rsfu1d3Z1Pe6GiKK6hZrw="

    .line 123
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 124
    invoke-virtual {v9, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->g:Ljava/lang/reflect/Method;

    const-string v2, "yTAAp+clNbNF5Td/QjC7p5K6b33nl9lorC0oZXbsQ+A="

    .line 125
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v5, v3

    .line 126
    invoke-virtual {v10, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "qb4zfYvhFYr4xgO9UX/SM6bCi7jkPggWD8USiOhVgzo="

    .line 127
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 128
    invoke-virtual {v11, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->h:Ljava/lang/reflect/Method;

    const-string v2, "SOQAY/Yc8NWIdkLAhBUoY0hR/vEv4aG+caNKA29L5T8="

    .line 129
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 130
    invoke-virtual {v12, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->i:Ljava/lang/reflect/Method;

    const-string v2, "MR/p4pF6zrM2yOWsh7Kq5dbwUT5Plh7L/wEZR20DFJc="

    .line 131
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 132
    invoke-virtual {v13, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->j:Ljava/lang/reflect/Method;

    const-string v2, "q9p7XgEInfiuZrB/emAOSeQGTPIFmNmpVflkcIcq4bg="

    .line 133
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 134
    invoke-virtual {v14, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->k:Ljava/lang/reflect/Method;

    const-string v2, "b42TKHdy7hWPdEEpyazy/kll9Hb0px+6KEorIMPWagk="

    .line 135
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 136
    invoke-virtual {v15, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->l:Ljava/lang/reflect/Method;

    const-string v2, "1BCDmMTvausZ3wHdSO9fsXVYA9qCh8/EnuL2Cru5aZ8="

    .line 137
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 138
    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->m:Ljava/lang/reflect/Method;

    const-string v2, "foNiPa3eaLdvcAZc5cQJrbbRL+KJK+PxPLQjHS2rrNE="

    .line 139
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v5, v18

    .line 140
    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/amn;->n:Ljava/lang/reflect/Method;

    const-string v2, "wzEQNL6fxZpDqLLHWbHIQaIaTEFKm5CSEQgkOmhzams="

    .line 141
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object/from16 v4, p0

    .line 142
    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->o:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    .line 145
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v16

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amu; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 147
    :try_start_7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amn;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->s:J

    sput-boolean v3, Lcom/google/ads/interactivemedia/v3/internal/amn;->c:Z
    :try_end_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    :goto_1
    move-object/from16 v4, v16

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v3

    move-object/from16 v17, v6

    .line 143
    :goto_2
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v5, ".jar"

    const-string v6, ".dex"

    .line 145
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 146
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amu; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_0
    move-exception v0

    .line 150
    :try_start_9
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 149
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 151
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 150
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 152
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 151
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 153
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 152
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    .line 154
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 153
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    .line 147
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 154
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 147
    :catch_6
    monitor-exit v1

    return-void

    :catch_7
    monitor-exit v1

    return-void

    :cond_2
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 16
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 0
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 13
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v0
.end method

.method static c()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 24
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 25
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 0
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 22
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 19
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 20
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 21
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 0
    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw p0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 12
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 0
    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw p0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amm;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/amn;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 8
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 0
    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw p0
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x1

    .line 26
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19

    :catch_0
    const/4 v1, 0x2

    .line 27
    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19

    .line 28
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/amn;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x19

    .line 29
    invoke-virtual {p0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    sget-wide v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->s:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const/16 v6, 0x11

    sub-long/2addr v2, v4

    .line 30
    invoke-virtual {p0, v6, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    const/16 v2, 0x17

    sget-wide v3, Lcom/google/ads/interactivemedia/v3/internal/amn;->s:J

    .line 31
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_19

    :catch_2
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->j:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19

    if-eqz v4, :cond_2

    :try_start_4
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 33
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19

    if-ne v5, v1, :cond_1

    const/16 v1, 0x1f

    .line 38
    :try_start_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    const/16 v1, 0x20

    .line 39
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_19

    goto :goto_0

    .line 34
    :cond_1
    :try_start_6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 35
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19

    :catch_3
    move-exception v1

    .line 37
    :try_start_7
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 36
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_4
    move-exception v1

    .line 48
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 37
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 31
    :cond_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 32
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_19

    .line 39
    :catch_5
    :goto_0
    :try_start_8
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/amn;->e:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19

    if-eqz v1, :cond_3

    :try_start_9
    new-array v4, v3, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_19

    const/16 v4, 0x21

    .line 44
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    goto :goto_1

    :catch_6
    move-exception v1

    .line 43
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 42
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_7
    move-exception v1

    .line 36
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 43
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 39
    :cond_3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 40
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_a
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19

    .line 44
    :catch_8
    :goto_1
    :try_start_b
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/amn;->b:Lcom/google/ads/interactivemedia/v3/internal/amt;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->q:Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_2

    .line 55
    :cond_4
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->g:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_19

    if-eqz v4, :cond_6

    :try_start_c
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 46
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_5

    .line 48
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->q:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19

    :goto_2
    const/16 v1, 0x1b

    .line 51
    :try_start_d
    invoke-virtual {p0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_d
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_19

    goto :goto_3

    .line 46
    :cond_5
    :try_start_e
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 47
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19

    :catch_9
    move-exception v1

    .line 72
    :try_start_f
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 49
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_a
    move-exception v1

    .line 56
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 50
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 55
    :cond_6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 45
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_f
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_19

    .line 51
    :catch_b
    :goto_3
    :try_start_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/amn;->b:Lcom/google/ads/interactivemedia/v3/internal/amt;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->r:Ljava/lang/String;

    if-eqz v4, :cond_7

    goto :goto_4

    .line 76
    :cond_7
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->i:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    if-eqz v4, :cond_9

    :try_start_11
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 53
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_8

    .line 55
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/ads/interactivemedia/v3/internal/amn;->r:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_19

    :goto_4
    const/16 v1, 0x1d

    .line 58
    :try_start_12
    invoke-virtual {p0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_12
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_19

    goto :goto_5

    .line 53
    :cond_8
    :try_start_13
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 54
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19

    :catch_c
    move-exception v1

    .line 57
    :try_start_14
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 56
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_d
    move-exception v1

    .line 49
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 57
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 76
    :cond_9
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 52
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_14
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_19

    .line 58
    :catch_e
    :goto_5
    :try_start_15
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/amn;->k:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v1, :cond_a

    :try_start_16
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 60
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_16 .. :try_end_16} :catch_11
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_19

    const/4 v4, 0x5

    .line 63
    :try_start_17
    aget v5, v1, v3

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    const/4 v4, 0x6

    .line 64
    aget v1, v1, v0

    int-to-long v5, v1

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    goto :goto_6

    :catch_f
    move-exception v1

    .line 62
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 61
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_10
    move-exception v1

    .line 42
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 62
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 58
    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 59
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_17
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_19

    .line 64
    :catch_11
    :goto_6
    :try_start_18
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/amn;->n:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_18 .. :try_end_18} :catch_14
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_19

    if-eqz v1, :cond_b

    :try_start_19
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 66
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_19 .. :try_end_19} :catch_14
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19

    const/16 v4, 0xc

    int-to-long v5, v1

    .line 69
    :try_start_1a
    invoke-virtual {p0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    goto :goto_7

    :catch_12
    move-exception v1

    .line 68
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 67
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_13
    move-exception v1

    .line 61
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 68
    invoke-direct {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 64
    :cond_b
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 65
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v1
    :try_end_1a
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1a .. :try_end_1a} :catch_14
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19

    .line 69
    :catch_14
    :goto_7
    :try_start_1b
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/amn;->o:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_19

    if-eqz v1, :cond_c

    :try_start_1c
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 71
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_19

    const/4 v1, 0x3

    int-to-long v2, v0

    .line 74
    :try_start_1d
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    goto :goto_8

    :catch_15
    move-exception v0

    .line 73
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 72
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_16
    move-exception v0

    .line 67
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 73
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amm;

    .line 70
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amm;-><init>()V

    throw v0
    :try_end_1d
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_19

    :catch_17
    :goto_8
    const/16 v0, 0x22

    .line 75
    :try_start_1e
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/amn;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(ILjava/lang/String;)V
    :try_end_1e
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1e .. :try_end_1e} :catch_18
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_19

    :catch_18
    const/16 v0, 0x23

    .line 76
    :try_start_1f
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/amn;->e(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V
    :try_end_1f
    .catch Lcom/google/ads/interactivemedia/v3/internal/amm; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_19

    :catch_19
    return-void
.end method
