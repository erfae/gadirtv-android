.class public final Lcom/google/vr/sdk/widgets/video/deps/px;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/px$a;
    }
.end annotation


# static fields
.field private static b:I

.field private static c:Z


# instance fields
.field public final a:Z

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/px$a;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/px$a;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->d:Lcom/google/vr/sdk/widgets/video/deps/px$a;

    .line 11
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/px$a;Landroid/graphics/SurfaceTexture;ZLcom/google/vr/sdk/widgets/video/deps/px$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/px;-><init>(Lcom/google/vr/sdk/widgets/video/deps/px$a;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/vr/sdk/widgets/video/deps/px;
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/px;->a()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/px;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 7
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/px$a;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;-><init>()V

    if-eqz p1, :cond_2

    .line 8
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/px;->b:I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a(I)Lcom/google/vr/sdk/widgets/video/deps/px;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 2

    .line 20
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/px;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/google/vr/sdk/widgets/video/deps/px;->c:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/px;->b(Landroid/content/Context;)I

    move-result p0

    :goto_0
    sput p0, Lcom/google/vr/sdk/widgets/video/deps/px;->b:I

    .line 3
    sput-boolean v2, Lcom/google/vr/sdk/widgets/video/deps/px;->c:Z

    .line 4
    :cond_1
    sget p0, Lcom/google/vr/sdk/widgets/video/deps/px;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4

    .line 23
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->c:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->d:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 25
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 27
    :cond_2
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 28
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const-string v0, "EGL_EXT_protected_content"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 13
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->d:Lcom/google/vr/sdk/widgets/video/deps/px$a;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->e:Z

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->d:Lcom/google/vr/sdk/widgets/video/deps/px$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/px$a;->a()V

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/px;->e:Z

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
