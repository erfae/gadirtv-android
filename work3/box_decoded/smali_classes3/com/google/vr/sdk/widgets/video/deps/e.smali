.class public Lcom/google/vr/sdk/widgets/video/deps/e;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ac;


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    .line 11
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    .line 12
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->allowedVideoJoiningTimeMs:J

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    .line 17
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    .line 18
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->allowedVideoJoiningTimeMs:J

    .line 19
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/e;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lcom/google/vr/sdk/widgets/video/deps/an;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/an;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;[Lcom/google/vr/sdk/widgets/video/deps/an;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;ILjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;[",
            "Lcom/google/vr/sdk/widgets/video/deps/an;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p6

    move-object/from16 v10, p7

    const-string v11, "DefaultRenderersFactory"

    .line 53
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/bd;

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/gm;->a:Lcom/google/vr/sdk/widgets/video/deps/gm;

    .line 54
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ak;->a(Landroid/content/Context;)Lcom/google/vr/sdk/widgets/video/deps/ak;

    move-result-object v8

    const/4 v5, 0x0

    move-object v1, v12

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/bd;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gm;Lcom/google/vr/sdk/widgets/video/deps/cd;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/ak;[Lcom/google/vr/sdk/widgets/video/deps/an;)V

    .line 55
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 61
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    .line 62
    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/ao;

    aput-object v7, v6, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/an;

    aput-object v7, v6, v2

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p4, v6, v0

    aput-object p5, v6, v4

    aput-object p3, v6, v2

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/y;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v1, 0x1

    .line 66
    :try_start_1
    invoke-virtual {v10, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibopusAudioRenderer."

    .line 67
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v1, v6

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_0
    move v6, v1

    :goto_1
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 73
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Class;

    .line 74
    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/ao;

    aput-object v7, v5, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/an;

    aput-object v7, v5, v2

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p4, v5, v0

    aput-object p5, v5, v4

    aput-object p3, v5, v2

    .line 77
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/y;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v5, v6, 0x1

    .line 78
    :try_start_3
    invoke-virtual {v10, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibflacAudioRenderer."

    .line 79
    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_3
    move v6, v5

    goto :goto_2

    :catch_4
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_2
    move v5, v6

    :goto_3
    :try_start_4
    const-string v1, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 86
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    .line 87
    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/ao;

    aput-object v7, v6, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/an;

    aput-object v7, v6, v2

    .line 88
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v0

    aput-object p5, v3, v4

    aput-object p3, v3, v2

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 91
    invoke-virtual {v10, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 92
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    :goto_4
    return-void
.end method

.method protected buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    .line 103
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/qm;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/qm;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/gt;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gu;

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gu;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/lr;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    .line 99
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ls;

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ls;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;ILjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/qd;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/y;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p7

    move-object/from16 v1, p8

    .line 31
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/pz;

    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/gm;->a:Lcom/google/vr/sdk/widgets/video/deps/gm;

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object v3, p1

    move-wide/from16 v5, p3

    move-object v7, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/pz;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gm;JLcom/google/vr/sdk/widgets/video/deps/cd;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    .line 38
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v3

    const-class v6, Lcom/google/vr/sdk/widgets/video/deps/qd;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    .line 42
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p5, v4, v3

    aput-object p6, v4, v9

    const/16 v3, 0x32

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 45
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "DefaultRenderersFactory"

    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :goto_0
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/lr;Lcom/google/vr/sdk/widgets/video/deps/gt;Lcom/google/vr/sdk/widgets/video/deps/cd;)[Lcom/google/vr/sdk/widgets/video/deps/y;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/qd;",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            "Lcom/google/vr/sdk/widgets/video/deps/lr;",
            "Lcom/google/vr/sdk/widgets/video/deps/gt;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;)[",
            "Lcom/google/vr/sdk/widgets/video/deps/y;"
        }
    .end annotation

    move-object v9, p0

    if-nez p6, :cond_0

    .line 22
    iget-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/cd;

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p6

    .line 23
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    iget-wide v3, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->allowedVideoJoiningTimeMs:J

    iget v7, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    move-object v0, p0

    move-object v2, v10

    move-object v5, p1

    move-object v6, p2

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildVideoRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;ILjava/util/ArrayList;)V

    .line 25
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildAudioProcessors()[Lcom/google/vr/sdk/widgets/video/deps/an;

    move-result-object v3

    iget v6, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    move-object v4, p1

    move-object v5, p3

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildAudioRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cd;[Lcom/google/vr/sdk/widgets/video/deps/an;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ao;ILjava/util/ArrayList;)V

    .line 26
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildTextRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/lr;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 27
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/gt;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 28
    iget-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    iget v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 29
    iget-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->context:Landroid/content/Context;

    iget v1, v9, Lcom/google/vr/sdk/widgets/video/deps/e;->extensionRendererMode:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/vr/sdk/widgets/video/deps/e;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 30
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/y;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/y;

    return-object v0
.end method
