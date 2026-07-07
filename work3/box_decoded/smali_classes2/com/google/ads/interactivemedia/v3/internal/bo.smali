.class public final Lcom/google/ads/interactivemedia/v3/internal/bo;
.super Ljava/lang/Exception;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private final i:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;II)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;II)V
    .locals 12

    move v3, p1

    move/from16 v7, p6

    const/4 v0, 0x2

    if-eqz v3, :cond_8

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_0

    const-string v1, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string v1, "Out of memory error"

    goto :goto_0

    :cond_1
    const-string v1, "Remote error"

    :goto_0
    move-object v4, p3

    move/from16 v6, p4

    goto :goto_2

    .line 2
    :cond_2
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_7

    if-eq v7, v4, :cond_6

    if-eq v7, v0, :cond_5

    if-eq v7, v2, :cond_4

    if-ne v7, v1, :cond_3

    const-string v1, "YES"

    goto :goto_1

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    const-string v1, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    :cond_5
    const-string v1, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    :cond_6
    const-string v1, "NO_UNSUPPORTED_TYPE"

    goto :goto_1

    :cond_7
    const-string v1, "NO"

    .line 3
    :goto_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", format_supported="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v4, p3

    move/from16 v6, p4

    const-string v1, "Source error"

    :goto_2
    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v8, "null"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v5, v0

    add-int/2addr v5, v8

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_9
    const/4 v8, 0x0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 8
    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;ILcom/google/ads/interactivemedia/v3/internal/ro;IJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;ILcom/google/ads/interactivemedia/v3/internal/ro;IJ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->i:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->b:Ljava/lang/String;

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:I

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput p7, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->h:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput p9, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->f:I

    iput-wide p10, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->g:J

    return-void
.end method

.method public static a(Ljava/io/IOException;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;I)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 8

    if-nez p3, :cond_0

    const/4 p4, 0x4

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p4

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;II)V

    return-object p4
.end method

.method public static a(Ljava/lang/OutOfMemoryError;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/RuntimeException;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/TimeoutException;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 9

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object v0, v8

    move-object v2, p0

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;II)V

    return-object v8
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/bo;
    .locals 13

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/bo;

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->i:Ljava/lang/Throwable;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->b:Ljava/lang/String;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:I

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->f:I

    iget-wide v10, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->g:J

    move-object v0, v12

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/cz;ILcom/google/ads/interactivemedia/v3/internal/ro;IJ)V

    return-object v12
.end method
