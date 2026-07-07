.class public Lcom/google/vr/sdk/widgets/video/deps/ae;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/g;
.implements Lcom/google/vr/sdk/widgets/video/deps/v$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/v$d;
.implements Lcom/google/vr/sdk/widgets/video/deps/v$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ae$a;,
        Lcom/google/vr/sdk/widgets/video/deps/ae$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

.field private audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

.field private final audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/ao;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

.field private final audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

.field private audioFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/am;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private audioVolume:F

.field private final bandwidthMeter:Lcom/google/vr/sdk/widgets/video/deps/nn;

.field private cameraMotionListener:Lcom/google/vr/sdk/widgets/video/deps/ql;

.field private final componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/gt;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Lcom/google/vr/sdk/widgets/video/deps/h;

.field protected final renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

.field private surface:Landroid/view/Surface;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/lr;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;

.field private final videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/qd;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

.field private videoFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private videoFrameMetadataListener:Lcom/google/vr/sdk/widgets/video/deps/qa;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/qc;",
            ">;"
        }
    .end annotation
.end field

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/ag$a;Landroid/os/Looper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac;",
            "Lcom/google/vr/sdk/widgets/video/deps/ni;",
            "Lcom/google/vr/sdk/widgets/video/deps/o;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/nn;",
            "Lcom/google/vr/sdk/widgets/video/deps/ag$a;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 3
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/oq;->a:Lcom/google/vr/sdk/widgets/video/deps/oq;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ae;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/ag$a;Lcom/google/vr/sdk/widgets/video/deps/oq;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/ag$a;Lcom/google/vr/sdk/widgets/video/deps/oq;Landroid/os/Looper;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac;",
            "Lcom/google/vr/sdk/widgets/video/deps/ni;",
            "Lcom/google/vr/sdk/widgets/video/deps/o;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/nn;",
            "Lcom/google/vr/sdk/widgets/video/deps/ag$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/oq;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->bandwidthMeter:Lcom/google/vr/sdk/widgets/video/deps/nn;

    .line 7
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ae$1;)V

    iput-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    .line 8
    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    new-instance v14, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v14}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    new-instance v15, Landroid/os/Handler;

    move-object/from16 v7, p9

    invoke-direct {v15, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->eventHandler:Landroid/os/Handler;

    move-object/from16 v1, p2

    move-object v2, v15

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    move-object/from16 v7, p5

    .line 16
    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ac;->createRenderers(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/qd;Lcom/google/vr/sdk/widgets/video/deps/ao;Lcom/google/vr/sdk/widgets/video/deps/lr;Lcom/google/vr/sdk/widgets/video/deps/gt;Lcom/google/vr/sdk/widgets/video/deps/cd;)[Lcom/google/vr/sdk/widgets/video/deps/y;

    move-result-object v2

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioVolume:F

    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioSessionId:I

    .line 19
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/aj;->a:Lcom/google/vr/sdk/widgets/video/deps/aj;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

    const/4 v1, 0x1

    .line 20
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoScalingMode:I

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    .line 22
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/h;

    move-object v1, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/h;-><init>([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/oq;Landroid/os/Looper;)V

    iput-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 23
    invoke-virtual {v1, v10, v2}, Lcom/google/vr/sdk/widgets/video/deps/ag$a;->a(Lcom/google/vr/sdk/widgets/video/deps/v;Lcom/google/vr/sdk/widgets/video/deps/oq;)Lcom/google/vr/sdk/widgets/video/deps/ag;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addListener(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V

    .line 25
    invoke-virtual {v13, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v11, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v14, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v12, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V

    .line 30
    invoke-interface {v9, v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/nn;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/nn$a;)V

    .line 31
    instance-of v2, v8, Lcom/google/vr/sdk/widgets/video/deps/bz;

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v8

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/bz;

    invoke-virtual {v2, v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/bz;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/by;)V

    .line 33
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/al;

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/al;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/al$b;)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/cd;Landroid/os/Looper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac;",
            "Lcom/google/vr/sdk/widgets/video/deps/ni;",
            "Lcom/google/vr/sdk/widgets/video/deps/o;",
            "Lcom/google/vr/sdk/widgets/video/deps/nn;",
            "Lcom/google/vr/sdk/widgets/video/deps/cd<",
            "Lcom/google/vr/sdk/widgets/video/deps/ch;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ag$a;

    invoke-direct {v7}, Lcom/google/vr/sdk/widgets/video/deps/ag$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ae;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/cd;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/ag$a;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/vr/sdk/widgets/video/deps/ae;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/vr/sdk/widgets/video/deps/ae;Landroid/view/Surface;Z)V
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/vr/sdk/widgets/video/deps/ae;II)V
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/vr/sdk/widgets/video/deps/ae;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/vr/sdk/widgets/video/deps/ae;ZI)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/widgets/video/deps/ae;)Landroid/view/Surface;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/bn;)Lcom/google/vr/sdk/widgets/video/deps/bn;
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/vr/sdk/widgets/video/deps/ae;)I
    .locals 0

    .line 414
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioSessionId:I

    return p0
.end method

.method static synthetic access$802(Lcom/google/vr/sdk/widgets/video/deps/ae;I)I
    .locals 0

    .line 415
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioSessionId:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/vr/sdk/widgets/video/deps/ae;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2

    .line 392
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHeight:I

    if-eq p2, v0, :cond_1

    .line 393
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceWidth:I

    .line 394
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHeight:I

    .line 395
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/qc;

    .line 396
    invoke-interface {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/qc;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 366
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 368
    :goto_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textureView:Landroid/view/TextureView;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 370
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 371
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 7

    .line 399
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioVolume:F

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a()F

    move-result v1

    mul-float v0, v0, v1

    .line 400
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 401
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 402
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 7

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 375
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 376
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 377
    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    .line 378
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 381
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/x;

    .line 382
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/x;->k()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 386
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->ownsSurface:Z

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 389
    :cond_3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    .line 390
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->ownsSurface:Z

    return-void
.end method

.method private updatePlayWhenReady(ZI)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/vr/sdk/widgets/video/deps/ah;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Lcom/google/vr/sdk/widgets/video/deps/ah;)V

    return-void
.end method

.method public addAudioDebugListener(Lcom/google/vr/sdk/widgets/video/deps/ao;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAudioListener(Lcom/google/vr/sdk/widgets/video/deps/am;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->addListener(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V

    return-void
.end method

.method public addMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lr;->a(Ljava/util/List;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoDebugListener(Lcom/google/vr/sdk/widgets/video/deps/qd;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoListener(Lcom/google/vr/sdk/widgets/video/deps/qc;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->b([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 135
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ay;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setAuxEffectInfo(Lcom/google/vr/sdk/widgets/video/deps/ay;)V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/vr/sdk/widgets/video/deps/ql;)V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->cameraMotionListener:Lcom/google/vr/sdk/widgets/video/deps/ql;

    if-eq v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 207
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 208
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 209
    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    const/4 v3, 0x7

    .line 210
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    const/4 v3, 0x0

    .line 211
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V

    return-void
.end method

.method public clearTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/vr/sdk/widgets/video/deps/qa;)V
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoFrameMetadataListener:Lcom/google/vr/sdk/widgets/video/deps/qa;

    if-eq v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 186
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 187
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 188
    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    const/4 v3, 0x6

    .line 189
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    const/4 v3, 0x0

    .line 190
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearVideoListener(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeVideoListener(Lcom/google/vr/sdk/widgets/video/deps/qc;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public createMessage(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object p1

    return-object p1
.end method

.method public getAnalyticsCollector()Lcom/google/vr/sdk/widgets/video/deps/ag;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->b()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/vr/sdk/widgets/video/deps/aj;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/vr/sdk/widgets/video/deps/v$a;
    .locals 0

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/vr/sdk/widgets/video/deps/bn;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(I)I

    move-result v0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->q()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->m()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTag()Ljava/lang/Object;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->x()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/vr/sdk/widgets/video/deps/nh;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->y()Lcom/google/vr/sdk/widgets/video/deps/nh;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextWindowIndex()I
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->n()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->e()Z

    move-result v0

    return v0
.end method

.method public getPlaybackError()Lcom/google/vr/sdk/widgets/video/deps/f;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->d()Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->a()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->j()Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->c()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->o()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->w()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->c(I)I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->f()I

    move-result v0

    return v0
.end method

.method public getSeekParameters()Lcom/google/vr/sdk/widgets/video/deps/ad;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->k()Lcom/google/vr/sdk/widgets/video/deps/ad;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->g()Z

    move-result v0

    return v0
.end method

.method public getTextComponent()Lcom/google/vr/sdk/widgets/video/deps/v$d;
    .locals 0

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoComponent()Lcom/google/vr/sdk/widgets/video/deps/v$e;
    .locals 0

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/vr/sdk/widgets/video/deps/bn;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoFormat:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 146
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->r()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->s()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->h()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    return v0
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/if;)V
    .locals 1

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->prepare(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V

    return-void
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    .line 275
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->b()V

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    .line 277
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    .line 278
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Z)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlayWhenReady()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->updatePlayWhenReady(ZI)V

    .line 280
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->b()V

    .line 324
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->release()V

    .line 325
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeSurfaceCallbacks()V

    .line 326
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 327
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->ownsSurface:Z

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 329
    :cond_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surface:Landroid/view/Surface;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v0, :cond_2

    .line 331
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-interface {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    .line 332
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->bandwidthMeter:Lcom/google/vr/sdk/widgets/video/deps/nn;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nn;->a(Lcom/google/vr/sdk/widgets/video/deps/nn$a;)V

    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/vr/sdk/widgets/video/deps/ah;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->b(Lcom/google/vr/sdk/widgets/video/deps/ah;)V

    return-void
.end method

.method public removeAudioDebugListener(Lcom/google/vr/sdk/widgets/video/deps/ao;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAudioListener(Lcom/google/vr/sdk/widgets/video/deps/am;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V

    return-void
.end method

.method public removeMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoDebugListener(Lcom/google/vr/sdk/widgets/video/deps/qd;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoListener(Lcom/google/vr/sdk/widgets/video/deps/qc;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public retry()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlaybackError()Lcom/google/vr/sdk/widgets/video/deps/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->prepare(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V

    :cond_1
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a()V

    .line 303
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a()V

    .line 300
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a()V

    .line 294
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->i()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a()V

    .line 297
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->b(I)V

    return-void
.end method

.method public varargs sendMessages([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/aj;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/aj;Z)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/aj;Z)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 110
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 111
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    const/4 v4, 0x3

    .line 112
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 113
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/am;

    .line 117
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/am;->a(Lcom/google/vr/sdk/widgets/video/deps/aj;)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 120
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlayWhenReady()Z

    move-result p2

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlaybackState()I

    move-result v1

    .line 121
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/aj;ZI)I

    move-result p1

    .line 122
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlayWhenReady()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public setAudioDebugListener(Lcom/google/vr/sdk/widgets/video/deps/ao;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addAudioDebugListener(Lcom/google/vr/sdk/widgets/video/deps/ao;)V

    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->f(I)I

    move-result v0

    .line 148
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->g(I)I

    move-result p1

    .line 149
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aj$a;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;-><init>()V

    .line 150
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/aj$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;->a(I)Lcom/google/vr/sdk/widgets/video/deps/aj$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;->a()Lcom/google/vr/sdk/widgets/video/deps/aj;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/aj;)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/vr/sdk/widgets/video/deps/ay;)V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 127
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 128
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 129
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    const/4 v4, 0x5

    .line 130
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 131
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCameraMotionListener(Lcom/google/vr/sdk/widgets/video/deps/ql;)V
    .locals 6

    .line 194
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->cameraMotionListener:Lcom/google/vr/sdk/widgets/video/deps/ql;

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 196
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 197
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 198
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    const/4 v4, 0x7

    .line 199
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 200
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/gt;)V

    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(ZI)I

    move-result v0

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 161
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/u;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(I)V

    return-void
.end method

.method public setSeekParameters(Lcom/google/vr/sdk/widgets/video/deps/ad;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/ad;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Z)V

    return-void
.end method

.method public setTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addTextOutput(Lcom/google/vr/sdk/widgets/video/deps/lr;)V

    :cond_0
    return-void
.end method

.method public setVideoDebugListener(Lcom/google/vr/sdk/widgets/video/deps/qd;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addVideoDebugListener(Lcom/google/vr/sdk/widgets/video/deps/qd;)V

    :cond_0
    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/vr/sdk/widgets/video/deps/qa;)V
    .locals 6

    .line 173
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoFrameMetadataListener:Lcom/google/vr/sdk/widgets/video/deps/qa;

    .line 174
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 175
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 176
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 177
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    const/4 v4, 0x6

    .line 178
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 179
    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoListener(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->addVideoListener(Lcom/google/vr/sdk/widgets/video/deps/qc;)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 6

    .line 38
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->videoScalingMode:I

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 41
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    .line 42
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    const/4 v4, 0x4

    .line 43
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 57
    :goto_0
    invoke-direct {p0, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeSurfaceCallbacks()V

    .line 60
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 63
    invoke-direct {p0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 65
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-direct {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 68
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 72
    invoke-direct {p0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 5

    .line 81
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->removeSurfaceCallbacks()V

    .line 82
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->textureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 85
    invoke-direct {p0, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "SimpleExoPlayer"

    const-string v4, "Replacing existing SurfaceTextureListener."

    .line 87
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 89
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 92
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 93
    invoke-direct {p0, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 94
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    .line 95
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->maybeNotifySurfaceSizeChanged(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(FFF)F

    move-result p1

    .line 138
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioVolume:F

    .line 141
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->sendVolumeToRenderers()V

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/am;

    .line 143
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/am;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->b(Z)V

    .line 315
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    .line 317
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->analyticsCollector:Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->b()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->mediaSource:Lcom/google/vr/sdk/widgets/video/deps/if;

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->audioFocusManager:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b()V

    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ae;->currentCues:Ljava/util/List;

    return-void
.end method
