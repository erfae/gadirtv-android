.class public final Lcom/google/vr/sdk/widgets/video/deps/cp;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cu;


# static fields
.field private static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/cr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 34
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cp;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->i:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 11

    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/cp;->a:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 5
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/do;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->e:I

    invoke-direct {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/do;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 6
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/eb;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->g:I

    invoke-direct {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 7
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ee;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->f:I

    invoke-direct {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/ee;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 8
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dt;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->h:I

    .line 9
    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->b:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    or-int/2addr v7, v8

    .line 11
    invoke-direct {v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/dt;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x4

    .line 12
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/fc;

    const-wide/16 v7, 0x0

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->c:I

    .line 13
    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->b:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    or-int/2addr v9, v10

    .line 15
    invoke-direct {v6, v7, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>(JI)V

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 16
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ez;

    invoke-direct {v6}, Lcom/google/vr/sdk/widgets/video/deps/ez;-><init>()V

    aput-object v6, v2, v3

    const/4 v3, 0x6

    .line 17
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/gb;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->i:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->j:I

    invoke-direct {v6, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(II)V

    aput-object v6, v2, v3

    const/4 v3, 0x7

    .line 18
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dg;

    invoke-direct {v6}, Lcom/google/vr/sdk/widgets/video/deps/dg;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x8

    .line 19
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/eo;

    invoke-direct {v6}, Lcom/google/vr/sdk/widgets/video/deps/eo;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0x9

    .line 20
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ft;

    invoke-direct {v6}, Lcom/google/vr/sdk/widgets/video/deps/ft;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xa

    .line 21
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/gg;

    invoke-direct {v6}, Lcom/google/vr/sdk/widgets/video/deps/gg;-><init>()V

    aput-object v6, v2, v3

    const/16 v3, 0xb

    .line 22
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dd;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->d:I

    .line 23
    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/cp;->b:Z

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v5, v7

    .line 25
    invoke-direct {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/dd;-><init>(I)V

    aput-object v6, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cr;

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :cond_4
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
