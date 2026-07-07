.class public Lcom/google/vr/cardboard/ExternalSurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$AndroidHandlerCallback;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;,
        Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalSurfaceManager"

.field public static final UNSPECIFIED_BUFFER_SIZE:I = -0x1


# instance fields
.field private isAttachedToGlContext:Z

.field private nextID:I

.field private volatile surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

.field private final surfaceDataUpdateLock:Ljava/lang/Object;

.field private final surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

.field private final updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;

    invoke-direct {v0, p1, p2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$1;-><init>(J)V

    new-instance p1, Lcom/google/vr/cardboard/ExternalSurfaceManager$2;

    invoke-direct {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$2;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 7
    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    .line 8
    iput-object p2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

    return-void
.end method

.method static synthetic access$000(JIIJ[F)V
    .locals 0

    .line 102
    invoke-static/range {p0 .. p6}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nativeUpdateSurface(JIIJ[F)V

    return-void
.end method

.method static synthetic access$200(J)V
    .locals 0

    .line 103
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nativeCallback(J)V

    return-void
.end method

.method private consumerUpdateManagedSurfaceHelper(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 89
    iget-boolean v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 92
    invoke-virtual {v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V

    .line 93
    invoke-interface {p1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;->accept(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iget-object p1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 97
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createExternalSurfaceImpl(IILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I
    .locals 12

    .line 27
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 29
    iget v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->nextID:I

    .line 30
    iget-object v9, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    iget-object v8, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceTextureFactory:Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;

    move-object v3, v11

    move v4, v2

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;-><init>(IIILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;Lcom/google/vr/cardboard/ExternalSurfaceManager$SurfaceTextureFactory;)V

    .line 32
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 34
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static native nativeCallback(J)V
.end method

.method private static native nativeUpdateSurface(JIIJ[F)V
.end method


# virtual methods
.method public consumerAttachToCurrentGLContext()V
    .locals 2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    .line 51
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 52
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 54
    invoke-virtual {v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumerAttachToCurrentGLContext(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    .line 58
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 59
    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 61
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    sget-object p1, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v1, "Surface %d\'s texture ID is not provided, abandoning attaching to current GL context."

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    iget-object v4, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    iget-object v4, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeAttachToCurrentGLContext(I)V

    goto :goto_0

    .line 71
    :cond_2
    sget-object v4, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "Surface %d doesn\'t exist, skip attaching to current GL context."

    .line 73
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public consumerDetachFromCurrentGLContext()V
    .locals 2

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->isAttachedToGlContext:Z

    .line 78
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 79
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    .line 81
    invoke-virtual {v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->maybeDetachFromCurrentGLContext()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumerUpdateManagedSurfaces()V
    .locals 1

    .line 84
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$0;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager;)V

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->consumerUpdateManagedSurfaceHelper(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;)V

    return-void
.end method

.method public consumerUpdateManagedSurfacesSequentially()V
    .locals 1

    .line 86
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$1;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager;)V

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->consumerUpdateManagedSurfaceHelper(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;)V

    return-void
.end method

.method public createExternalSurface()I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v0, v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(IILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I

    move-result v0

    return v0
.end method

.method public createExternalSurface(IILjava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)I
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    .line 25
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$AndroidHandlerCallback;

    invoke-direct {v0, p3, p4, p5}, Lcom/google/vr/cardboard/ExternalSurfaceManager$AndroidHandlerCallback;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(IILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I

    move-result p1

    return p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface listener and handler must both be non-null for external Surface creation for Java callbacks."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createExternalSurfaceWithNativeCallback(IIJJ)I
    .locals 1

    .line 26
    new-instance v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->createExternalSurfaceImpl(IILcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceCallback;)I

    move-result p1

    return p1
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 46
    iget-object v1, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    invoke-virtual {p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    sget-object v0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v1, 0x3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Surface with ID "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, returning null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v0, v0, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method final synthetic lambda$consumerUpdateManagedSurfaces$0$ExternalSurfaceManager(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->updateSurfaceTexture(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    return-void
.end method

.method final synthetic lambda$consumerUpdateManagedSurfacesSequentially$1$ExternalSurfaceManager(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {p1, v0}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->updateSurfaceTextureSequentially(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    return-void
.end method

.method public releaseExternalSurface(I)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    new-instance v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    iget-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v1, v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;)V

    .line 38
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    if-eqz v2, :cond_0

    .line 40
    iget-object v3, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, Lcom/google/vr/cardboard/ExternalSurfaceManager;->TAG:Ljava/lang/String;

    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Not releasing nonexistent surface ID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shutdown()V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceDataUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 12
    new-instance v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    invoke-direct {v2}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;-><init>()V

    iput-object v2, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->surfaceData:Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;

    .line 13
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    iget-object v4, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v3, v4}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    iget-object v1, v1, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceData;->surfacesToRelease:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;

    iget-object v3, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager;->updateSurfaceCallback:Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;

    invoke-virtual {v2, v3}, Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;->shutdown(Lcom/google/vr/cardboard/ExternalSurfaceManager$UpdateSurfaceCallback;)V

    goto :goto_1

    .line 21
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
